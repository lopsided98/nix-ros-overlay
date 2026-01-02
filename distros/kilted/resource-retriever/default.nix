
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, libcurl-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-resource-retriever";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/kilted/resource_retriever/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "c9b1ba1cd0f65eef16ee63f02bdc7b1ba406c052e7bfcffe28aeb069dec53280";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python libcurl-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
