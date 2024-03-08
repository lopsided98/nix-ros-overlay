
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-download";
  version = "0.0.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/rolling/ament_download/0.0.5-5.tar.gz";
    name = "0.0.5-5.tar.gz";
    sha256 = "4b950cee07443cc10b0f80deb5b5cf6274f5899362f78312b286c6b80f5c4741";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
