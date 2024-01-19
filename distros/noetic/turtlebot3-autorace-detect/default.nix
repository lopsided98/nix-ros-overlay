
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, python3Packages, pythonPackages, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-detect";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_detect/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "c25b137bb7dac2770de0f40d5b0667edf6f7f125de329dbc0af2f1dd8bafc6d5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs python3Packages.opencv4 pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutoRace ROS packages for feature detection with TurtleBot3 Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
