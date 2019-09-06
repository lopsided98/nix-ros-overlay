
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libcurl-vendor, ament-index-cpp, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-crystal-resource-retriever";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/resource_retriever-release/archive/release/crystal/resource_retriever/2.1.0-0.tar.gz;
    sha256 = "9db42f615c9c1240dcae2f0ef91495e1177ab7c97acd884dfb38507e5d41660b";
  };

  buildType = "ament_cmake";
  buildInputs = [ libcurl-vendor ament-index-cpp ];
  propagatedBuildInputs = [ libcurl-vendor ament-index-cpp ];
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
