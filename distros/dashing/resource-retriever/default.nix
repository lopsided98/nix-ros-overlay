
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, libcurl-vendor }:
buildRosPackage {
  pname = "ros-dashing-resource-retriever";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/resource_retriever/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "f58cd5a5e1dba6b9394d12427202ad1d0b083b4d291f114b3ae434ab09bbd3cd";
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
