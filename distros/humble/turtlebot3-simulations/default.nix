
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-simulations";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/turtlebot3_simulations/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "bb08548e024ae7a221d17bd838bcf1fd6355255681f3b59d0e066ab2f7c2f69f";
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
