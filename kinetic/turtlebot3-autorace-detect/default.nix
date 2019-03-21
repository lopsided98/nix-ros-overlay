
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, pythonPackages, catkin, move-base-msgs, nav-msgs, rospy, std-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace-detect";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace_detect/1.2.0-0.tar.gz;
    sha256 = "ef35c9ff59cc6651de6acf27badd913c4aaf178345c21652f0a19ceba7aa3848";
  };

  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy sensor-msgs cv-bridge rospy pythonPackages.opencv3 move-base-msgs nav-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin dynamic-reconfigure ];

  meta = {
    description = ''AutoRace ROS packages for feature detection with TurtleBot3 Auto'';
    #license = lib.licenses.Apache 2.0;
  };
}
