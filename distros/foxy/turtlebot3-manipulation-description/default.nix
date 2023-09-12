
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "507739d30145240d5542c617879e8a3cc6589e4147f3945b2b9a9b260e8717cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 package for turtlebot3_manipulation_description'';
    license = with lib.licenses; [ asl20 ];
  };
}
