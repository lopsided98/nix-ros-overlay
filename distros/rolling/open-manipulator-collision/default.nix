
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, fcl, kdl-parser, rclcpp, sensor-msgs, std-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-collision";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_collision/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "a2dc2868c4ba2a61c14385e8ddb3e9cd9542ce02027eff88048c37feed27062e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen fcl kdl-parser rclcpp sensor-msgs std-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package implements a self-collision detection system for the follower robot during
    leader-follower teleoperation. Its primary purpose is to enhance safety by detecting
    potential self-collisions in real time while the robot is being remotely operated.";
    license = with lib.licenses; [ asl20 ];
  };
}
