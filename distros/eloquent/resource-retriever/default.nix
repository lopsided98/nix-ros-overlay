
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, libcurl-vendor }:
buildRosPackage {
  pname = "ros-eloquent-resource-retriever";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/eloquent/resource_retriever/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7cb31b32b706d3238597b382f61911839a38fda9e13d3a1c52992bfbe452a577";
  };

  buildType = "ament_cmake";
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
