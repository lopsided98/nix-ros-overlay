
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-ament-download";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/samsung-ros/ament_download-release/archive/release/dashing/ament_download/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "e50d06a01987f08b6e939a337d8581fb2d374de5280f8f41ad134be677071dd8";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
