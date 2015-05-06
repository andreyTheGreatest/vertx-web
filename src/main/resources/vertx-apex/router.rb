require 'vertx/http_server_request'
require 'vertx-apex/route'
require 'vertx-apex/routing_context'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.apex.Router
module VertxApex
  #  A router receives request from an {::Vertx::HttpServer} and routes it to the first matching
  #  {::VertxApex::Route} that it contains. A router can contain many routes.
  #  <p>
  #  Routers are also used for routing failures.
  class Router
    # @private
    # @param j_del [::VertxApex::Router] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxApex::Router] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a router
    # @param [::Vertx::Vertx] vertx the Vert.x instance
    # @return [::VertxApex::Router] the router
    def self.router(vertx=nil)
      if vertx.class.method_defined?(:j_del) && !block_given?
        return ::VertxApex::Router.new(Java::IoVertxExtApex::Router.java_method(:router, [Java::IoVertxCore::Vertx.java_class]).call(vertx.j_del))
      end
      raise ArgumentError, "Invalid arguments when calling router(vertx)"
    end
    #  This method is used to provide a request to the router. Usually you take request from the
    #  {::Vertx::HttpServer#request_handler} and pass it to this method. The
    #  router then routes it to matching routes.
    # @param [::Vertx::HttpServerRequest] request the request
    # @return [void]
    def accept(request=nil)
      if request.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:accept, [Java::IoVertxCoreHttp::HttpServerRequest.java_class]).call(request.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling accept(request)"
    end
    #  Add a route that matches the specified HTTP method and path
    # @overload route()
    # @overload route(path)
    #   @param [String] path URI paths that begin with this path will match
    # @overload route(method,path)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method to match
    #   @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def route(param_1=nil,param_2=nil)
      if !block_given? && param_1 == nil && param_2 == nil
        return ::VertxApex::Route.new(@j_del.java_method(:route, []).call())
      elsif param_1.class == String && !block_given? && param_2 == nil
        return ::VertxApex::Route.new(@j_del.java_method(:route, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == Symbol && param_2.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:route, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2))
      end
      raise ArgumentError, "Invalid arguments when calling route(param_1,param_2)"
    end
    #  Add a route that matches the specified HTTP method and path regex
    # @overload routeWithRegex(regex)
    #   @param [String] regex URI paths that begin with a match for this regex will match
    # @overload routeWithRegex(method,regex)
    #   @param [:OPTIONS,:GET,:HEAD,:POST,:PUT,:DELETE,:TRACE,:CONNECT,:PATCH] method the HTTP method to match
    #   @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def route_with_regex(param_1=nil,param_2=nil)
      if param_1.class == String && !block_given? && param_2 == nil
        return ::VertxApex::Route.new(@j_del.java_method(:routeWithRegex, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == Symbol && param_2.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:routeWithRegex, [Java::IoVertxCoreHttp::HttpMethod.java_class,Java::java.lang.String.java_class]).call(Java::IoVertxCoreHttp::HttpMethod.valueOf(param_1),param_2))
      end
      raise ArgumentError, "Invalid arguments when calling route_with_regex(param_1,param_2)"
    end
    #  Add a route that matches a HTTP GET request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def get(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:get, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:get, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling get(path)"
    end
    #  Add a route that matches a HTTP GET request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def get_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:getWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling get_with_regex(regex)"
    end
    #  Add a route that matches a HTTP HEAD request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def head(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:head, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:head, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling head(path)"
    end
    #  Add a route that matches a HTTP HEAD request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def head_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:headWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling head_with_regex(regex)"
    end
    #  Add a route that matches a HTTP OPTIONS request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def options(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:options, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:options, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling options(path)"
    end
    #  Add a route that matches a HTTP OPTIONS request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def options_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:optionsWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling options_with_regex(regex)"
    end
    #  Add a route that matches a HTTP PUT request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def put(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:put, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:put, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling put(path)"
    end
    #  Add a route that matches a HTTP PUT request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def put_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:putWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling put_with_regex(regex)"
    end
    #  Add a route that matches a HTTP POST request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def post(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:post, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:post, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling post(path)"
    end
    #  Add a route that matches a HTTP POST request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def post_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:postWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling post_with_regex(regex)"
    end
    #  Add a route that matches a HTTP DELETE request and the specified path
    # @param [String] path URI paths that begin with this path will match
    # @return [::VertxApex::Route] the route
    def delete(path=nil)
      if !block_given? && path == nil
        return ::VertxApex::Route.new(@j_del.java_method(:delete, []).call())
      elsif path.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:delete, [Java::java.lang.String.java_class]).call(path))
      end
      raise ArgumentError, "Invalid arguments when calling delete(path)"
    end
    #  Add a route that matches a HTTP DELETE request and the specified path regex
    # @param [String] regex URI paths that begin with a match for this regex will match
    # @return [::VertxApex::Route] the route
    def delete_with_regex(regex=nil)
      if regex.class == String && !block_given?
        return ::VertxApex::Route.new(@j_del.java_method(:deleteWithRegex, [Java::java.lang.String.java_class]).call(regex))
      end
      raise ArgumentError, "Invalid arguments when calling delete_with_regex(regex)"
    end
    #  @return a list of all the routes on this router
    # @return [Array<::VertxApex::Route>]
    def get_routes
      if !block_given?
        return @j_del.java_method(:getRoutes, []).call().to_a.map { |elt| ::VertxApex::Route.new(elt) }
      end
      raise ArgumentError, "Invalid arguments when calling get_routes()"
    end
    #  Remove all the routes from this router
    # @return [self]
    def clear
      if !block_given?
        @j_del.java_method(:clear, []).call()
        return self
      end
      raise ArgumentError, "Invalid arguments when calling clear()"
    end
    #  Mount a sub router on this router
    # @param [String] mountPoint the mount point (path prefix) to mount it on
    # @param [::VertxApex::Router] subRouter the router to mount as a sub router
    # @return [self]
    def mount_sub_router(mountPoint=nil,subRouter=nil)
      if mountPoint.class == String && subRouter.class.method_defined?(:j_del) && !block_given?
        @j_del.java_method(:mountSubRouter, [Java::java.lang.String.java_class,Java::IoVertxExtApex::Router.java_class]).call(mountPoint,subRouter.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling mount_sub_router(mountPoint,subRouter)"
    end
    #  Specify a handler for any unhandled exceptions on this router. The handler will be called for exceptions thrown
    #  from handlers. This does not affect the normal failure routing logic.
    # @yield the exception handler
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    #  Used to route a context to the router. Used for sub-routers. You wouldn't normally call this method directly.
    # @param [::VertxApex::RoutingContext] context the routing context
    # @return [void]
    def handle_context(context=nil)
      if context.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handleContext, [Java::IoVertxExtApex::RoutingContext.java_class]).call(context.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle_context(context)"
    end
    #  Used to route a failure to the router. Used for sub-routers. You wouldn't normally call this method directly.
    # @param [::VertxApex::RoutingContext] context the routing context
    # @return [void]
    def handle_failure(context=nil)
      if context.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handleFailure, [Java::IoVertxExtApex::RoutingContext.java_class]).call(context.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle_failure(context)"
    end
  end
end
