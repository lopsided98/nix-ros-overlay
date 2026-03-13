
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, ros2pkg }:
buildRosPackage {
  pname = "ros-jazzy-ros2-snapshot";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/jazzy/ros2_snapshot/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "b341898b37a7a42d06cd169b5d5a6073fbed967f6581a8b80f33833a8f9e717f";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pydantic ros2pkg ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
