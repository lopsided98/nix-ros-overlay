
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pythonPackages, catkin, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-autorace-core";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/turtlebot3_autorace_core/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "cd350672e9b7912409d33cd0e9f7f0deccddc9eac9999778f9fe08f0ea81912d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.enum34 std-msgs rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto's core'';
    license = with lib.licenses; [ asl20 ];
  };
}
