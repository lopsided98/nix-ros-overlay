
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-geometry-tutorials";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/iron/geometry_tutorials/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5d3acdefa415ca61a31897a834677d3d37b6812921bee80f15c2a3381063a6d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
