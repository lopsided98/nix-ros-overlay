
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, curl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever";
  version = "3.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/rolling/resource_retriever/3.10.1-1.tar.gz";
    name = "3.10.1-1.tar.gz";
    sha256 = "49eaf415e25770473f9e85e13198258cc9f5ba70acf427513e9e034807705982";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python curl ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-ros-core ];

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
