
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-cpp, libcurl-vendor, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-eloquent-resource-retriever";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/eloquent/resource_retriever/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "cb34694c5cfb1eb23e61bee81d4783a437770d2638d26f09380fcd62e5125d23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-index-cpp libcurl-vendor ];
  propagatedBuildInputs = [ ament-index-cpp libcurl-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
