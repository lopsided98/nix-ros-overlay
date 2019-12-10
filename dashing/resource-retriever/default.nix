
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, libcurl-vendor }:
buildRosPackage {
  pname = "ros-dashing-resource-retriever";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/resource_retriever/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "53aec80c0e8de04c3a3665a96c4ad906b6f842a2408ec692851776121ddc5ba9";
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
