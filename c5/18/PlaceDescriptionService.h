/***
 * Excerpted from "Modern C++ Programming with Test-Driven Development",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/lotdd for more book information.
***/
#ifndef PlaceDescriptionService_h
#define PlaceDescriptionService_h

#include <string>
#include <memory>
#include "Address.h"
#include "HttpFactory.h"

class Http;

// using factory class 
class PlaceDescriptionService {
public:
   PlaceDescriptionService(std::shared_ptr<HttpFactory> factory);
   std::string summaryDescription(
      const std::string& latitude, const std::string& longitude) const;

private:
   std::string createGetRequestUrl(
      const std::string& latitude, const std::string& longitude) const;
   std::string summaryDescription(const Address& address) const;
   std::string keyValue(
      const std::string& key, const std::string& value) const;
   std::string get(const std::string& requestUrl) const;
   std::string summaryDescription(const std::string& response) const;

   std::shared_ptr<HttpFactory> httpFactory_;
};

#endif
