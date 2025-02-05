#include "gmock/gmock.h"

#include <memory>

#include "PlaceDescriptionService.h"
#include "Http.h"
#include "HttpFactory.h"

using namespace std;
using namespace testing;

class HttpStub: public Http {
public:
   MOCK_METHOD0(initialize, void());
   MOCK_CONST_METHOD1(get, string(const string&));
};

class APlaceDescriptionService: public Test {
public:
   static const string ValidLatitude;
   static const string ValidLongitude;
};

class APlaceDescriptionService_WithHttpMock: public APlaceDescriptionService {//override with mock
public:
   PlaceDescriptionServiceTemplate<HttpStub> service; //INject stub through template
};

TEST_F(APlaceDescriptionService_WithHttpMock, MakesHttpRequestToObtainAddress) {

   string urlStart{
      "http://open.mapquestapi.com/nominatim/v1/reverse?format=json&"};
	  
   auto expectedURL = urlStart + 
      "lat=" + APlaceDescriptionService::ValidLatitude + "&" +
      "lon=" + APlaceDescriptionService::ValidLongitude;
   EXPECT_CALL(service.http(), initialize());
   EXPECT_CALL(service.http(), get(expectedURL));

   service.summaryDescription(ValidLatitude, ValidLongitude);
}

class APlaceDescriptionService_WithNiceHttpMock: 
   public APlaceDescriptionService {
public:
   PlaceDescriptionServiceTemplate<NiceMock<HttpStub>> service;
};

TEST_F(APlaceDescriptionService_WithNiceHttpMock, 
      FormatsRetrievedAddressIntoSummaryDescription) {
   EXPECT_CALL(service.http(), get(_))
      .WillOnce(Return(
         R"({ "address": {
              "road":"Drury Ln",
              "city":"Fountain",
              "state":"CO",
              "country":"US" }})"));

   auto description = service.summaryDescription(ValidLatitude, ValidLongitude);

   ASSERT_THAT(description, Eq("Drury Ln, Fountain, CO, US"));
}

const string APlaceDescriptionService::ValidLatitude("38.005");
const string APlaceDescriptionService::ValidLongitude("-104.44");
