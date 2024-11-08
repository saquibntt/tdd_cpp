#include "gmock/gmock.h"

#include <memory>

#include "PlaceDescriptionService.h"
#include "Http.h"

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
const string APlaceDescriptionService::ValidLatitude("38.005");
const string APlaceDescriptionService::ValidLongitude("-104.44");

//overriede getter
class PlaceDescriptionService_StubHttpService: public PlaceDescriptionService {
public:
   PlaceDescriptionService_StubHttpService(shared_ptr<HttpStub> httpStub) 
      :PlaceDescriptionService(httpStub), httpStub_{httpStub} {}
   shared_ptr<Http> gethttpService() const override { 
      std::cout << "************override getter******************\n" << std::endl;
      return httpStub_; }
   shared_ptr<Http> httpStub_;
};


//////////////////////// Demonstration for mock and using interface

class PlaceDescriptionService_MockHttpService: public PlaceDescriptionServiceInterface {
public:
   MOCK_METHOD(std::string, summaryDescription, (const std::string&,const std::string&), (const, override));
};

TEST_F(APlaceDescriptionService, WithMock_MakesHttpRequestToObtainAddress) {
   PlaceDescriptionService_MockHttpService withMock;
   EXPECT_CALL(withMock, summaryDescription(_,_)).WillOnce(Return("Hello"));
   EXPECT_EQ(withMock.summaryDescription("lat", "long"), "Hello");

}

////////////////////////


TEST_F(APlaceDescriptionService, MakesHttpRequestToObtainAddress) {
   InSequence forceExpectationOrder;
   //shared_ptr<HttpStub> httpStub{new HttpStub};
   shared_ptr<HttpStub> httpStub = std::make_shared<HttpStub>();
   string urlStart{
      "http://open.mapquestapi.com/nominatim/v1/reverse?format=json&"};
   auto expectedURL = urlStart + 
      "lat=" + APlaceDescriptionService::ValidLatitude + "&" +
      "lon=" + APlaceDescriptionService::ValidLongitude;
   EXPECT_CALL(*httpStub, initialize());
   EXPECT_CALL(*httpStub, get(expectedURL));
   PlaceDescriptionService_StubHttpService service{httpStub};

   service.summaryDescription(ValidLatitude, ValidLongitude);
}

TEST_F(APlaceDescriptionService, FormatsRetrievedAddressIntoSummaryDescription) {
   shared_ptr<HttpStub> httpStub{new NiceMock<HttpStub>};
   EXPECT_CALL(*httpStub, get(_))
      .WillOnce(Return(
         R"({ "address": {
              "road":"Drury Ln",
              "city":"Fountain",
              "state":"CO",
              "country":"US" }})"));
   PlaceDescriptionService_StubHttpService service{httpStub};

   auto description = service.summaryDescription(ValidLatitude, ValidLongitude);

   ASSERT_THAT(description, Eq("Drury Ln, Fountain, CO, US"));
}

/////////////////////////// Exception ////////////////7

TEST_F(APlaceDescriptionService, throwsOnEmptyHttpRequestToObtainAddress) {
   InSequence forceExpectationOrder;
   //shared_ptr<HttpStub> httpStub{new HttpStub};
   shared_ptr<HttpStub> httpStub = std::make_shared<HttpStub>();
   
   string urlStart{
      "http://open.mapquestapi.com/nominatim/v1/reverse?format=json&"};
   auto expectedURL = urlStart + 
      "lat=" + APlaceDescriptionService::ValidLatitude + "&" +
      "lon=" + APlaceDescriptionService::ValidLongitude;
   bool exceptionCalled=false;
   try
   {
      PlaceDescriptionService_StubHttpService service{nullptr};

   }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << std::endl;
        exceptionCalled=true;
    }
   
      //EXPECT_THROW(PlaceDescriptionService_StubHttpService(nullptr), std::runtime_error);

   //service.summaryDescription(ValidLatitude, ValidLongitude);
}

//////////////////////////////