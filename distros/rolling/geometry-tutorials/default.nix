
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-geometry-tutorials";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/geometry_tutorials/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "145712d648ff875f5c292213af9e3ad465523268ea4bd3cf4271e7d63519d79a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
