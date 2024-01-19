
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, python3Packages, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-camera";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_camera/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "677cf80fe061c8cc01ba31bcb80ffa83907efd5954e4068878bca8a0fe2eb992";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure python3Packages.opencv4 pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and process the image'';
    license = with lib.licenses; [ asl20 ];
  };
}
