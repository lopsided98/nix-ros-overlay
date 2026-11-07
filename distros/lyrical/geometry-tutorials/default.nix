
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-geometry-tutorials";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/lyrical/geometry_tutorials/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "f7f1ac62d3ef6009730e87f7700ca21e88697012c6ca5141aed795ec83ccff7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
