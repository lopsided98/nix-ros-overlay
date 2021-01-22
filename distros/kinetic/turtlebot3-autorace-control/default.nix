
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace-control";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace_control/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "ae60c608b9b7bbecfd6cbd2c4c786c1926a1ed9c2ae724553a78521fbcbb0b01";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls TurtleBot3 Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
