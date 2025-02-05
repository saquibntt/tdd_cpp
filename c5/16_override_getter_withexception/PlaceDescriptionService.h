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

class Http;

class PlaceDescriptionServiceInterface{

virtual std::string summaryDescription(
      const std::string& latitude, const std::string& longitude) const = 0;

};

class PlaceDescriptionService: PlaceDescriptionServiceInterface
{
public:

   PlaceDescriptionService(std::shared_ptr<Http>);

   virtual ~PlaceDescriptionService() {}
   virtual std::string summaryDescription(
      const std::string& latitude, const std::string& longitude) const;

private:
   // ...
   std::string createGetRequestUrl(
      const std::string& latitude, const std::string& longitude) const;
   std::string summaryDescription(const Address& address) const;
   std::string keyValue(
      const std::string& key, const std::string& value) const;
   std::string get(const std::string& requestUrl) const;
   std::string summaryDescription(const std::string& response) const;

   std::shared_ptr<Http> http_;
   std::string name{""};

   std::shared_ptr<Http> setHttp();

   std::shared_ptr<Http> checkNull(std::shared_ptr<Http> per);

protected:
   virtual std::shared_ptr<Http> gethttpService() const;
};

#endif
