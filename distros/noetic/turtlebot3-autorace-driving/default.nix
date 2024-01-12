
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, std-msgs, tf, turtlebot3-autorace-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-driving";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_driving/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "03f25a6f2c271f2e7c7757818cdb9f9923a5cf22d6c5edc2131e5eb59cc68e1a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs std-msgs tf turtlebot3-autorace-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto driving'';
    license = with lib.licenses; [ asl20 ];
  };
}
