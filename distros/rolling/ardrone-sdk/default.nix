
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libjson-c-dev, ament-cmake, avahi, ffmpeg, ncurses }:
buildRosPackage {
  pname = "ros-rolling-ardrone-sdk";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/rolling/ardrone_sdk/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "6d27a2bd09e9e8d09dc1273f30266024d8959ab5b1786c47b4d99d94430e7cc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_libjson-c-dev avahi ffmpeg ncurses ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports ARSDK3 as a library";
    license = with lib.licenses; [ bsd3 ];
  };
}
