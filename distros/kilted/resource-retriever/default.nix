
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, libcurl-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-resource-retriever";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/kilted/resource_retriever/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "20b9d38e5d842e447ef2e286b7bd742db8180a52b72588b164ead7b4ad12f189";
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
