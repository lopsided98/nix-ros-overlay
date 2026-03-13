
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2-snapshot";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/rolling/ros2_snapshot/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "3aac208adb7059a0243e0ac1a7a930d0eeca2ecb6ac70f92a5ed545fac2d564c";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pydantic ros2pkg ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
