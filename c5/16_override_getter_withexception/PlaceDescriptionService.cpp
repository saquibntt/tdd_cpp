#include "PlaceDescriptionService.h"
#include "Http.h"
#include "AddressExtractor.h"
#include "Address.h"
#include "CurlHttp.h"
#include <string>
#include <iostream>

using namespace std;

/// @brief kept code to check some variations///////////

shared_ptr<Http> PlaceDescriptionService::setHttp()
{
   std::cout << "************** prod curl http *****************\n" << std::endl;
   return make_shared<CurlHttp>();
    
}

std::shared_ptr<Http> PlaceDescriptionService::checkNull(std::shared_ptr<Http> per)
{
    if(per == nullptr)
    {
        std::cout << "************** prod throws exceptioin *****************\n" << std::endl;
        throw std::runtime_error("Logic received null persistence object!");
    }
    return per;
}

PlaceDescriptionService::PlaceDescriptionService(shared_ptr<Http>)
{
   http_ = setHttp();
   checkNull(http_);
   }


// PlaceDescriptionService::PlaceDescriptionService(shared_ptr<Http>)
//    : http_{make_shared<CurlHttp>()}
//...

/////////////////////////////////////////////

string PlaceDescriptionService::summaryDescription(
      const string& latitude, const string& longitude) const {
   auto request = createGetRequestUrl(latitude, longitude);
   auto response = get(request);
   return summaryDescription(response);
}

string PlaceDescriptionService::summaryDescription(
      const string& response) const {
   AddressExtractor extractor;
   auto address = extractor.addressFrom(response);
   return address.summaryDescription();
}

string PlaceDescriptionService::get(const string& url) const {
   auto http = gethttpService();
   http->initialize();
   return http->get(url);
}

shared_ptr<Http> PlaceDescriptionService::gethttpService() const {
   std::cout << "*****************return the already created instance*******************\n" << std::endl;
   return http_;
}

string PlaceDescriptionService::createGetRequestUrl(
      const string& latitude, const string& longitude) const {
   string server{"http://open.mapquestapi.com/"};
   string document{"nominatim/v1/reverse"};
   return server + document + "?" +
          keyValue("format", "json") + "&" +
          keyValue("lat", latitude) + "&" +
          keyValue("lon", longitude);
}

string PlaceDescriptionService::keyValue(
      const string& key, const string& value) const {
   return key + "=" + value;
}

