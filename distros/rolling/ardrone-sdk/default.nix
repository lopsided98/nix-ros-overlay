
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ardrone-sdk";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/rolling/ardrone_sdk/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c82b7e692d9272fb0891ff199ebea7d0d2a40d17b4cf205a8a2eaa3bf5d8b13a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports ARSDK3 as a library";
    license = with lib.licenses; [ asl20 ];
  };
}
