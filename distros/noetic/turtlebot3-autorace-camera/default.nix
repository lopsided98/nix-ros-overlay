
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-camera";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_camera/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "894e634fd19fa53b1e4041e6dfd29588291969d612c78b8e6c2d388d60b2270a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure pythonPackages.enum34 pythonPackages.numpy pythonPackages.opencv3 rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and process the image'';
    license = with lib.licenses; [ asl20 ];
  };
}
