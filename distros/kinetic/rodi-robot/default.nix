
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roslint, rospy, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rodi-robot";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/benjayah/rodi_robot-release/archive/release/kinetic/rodi_robot/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "e3eaaad3b8c4551b9d5e5514c06f457f7a15bb15d0eda26338e90df72f0d3618";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ geometry-msgs roslint rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoDI ROS package.
    Allows to control a RoDI from the Robot Operating System (ROS) without the need 
    to flash a custom firmware and just using the default firmware web services API.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
