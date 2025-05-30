
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-simulations";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/kilted/turtlebot3_simulations/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "ba813674b8a7f4008e253bd61adca001c946e5bb4a9be325905738d9a0f46679";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 packages for TurtleBot3 simulations";
    license = with lib.licenses; [ asl20 ];
  };
}
