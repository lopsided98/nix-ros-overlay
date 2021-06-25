
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, std-msgs, tf, turtlebot3-autorace-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-driving";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_driving/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "5c43ec90714b913c4061502534c7176d20f0e7cd78710252decd93b56464c750";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs std-msgs tf turtlebot3-autorace-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto driving'';
    license = with lib.licenses; [ asl20 ];
  };
}
