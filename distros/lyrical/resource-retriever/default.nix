
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, curl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-resource-retriever";
  version = "3.9.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/lyrical/resource_retriever/3.9.3-3.tar.gz";
    name = "3.9.3-3.tar.gz";
    sha256 = "f2466e9ce4e45e39e3b2c63ae0e392e9d15d06ca7cf766be095f053eb8f1426c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python curl ];
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
