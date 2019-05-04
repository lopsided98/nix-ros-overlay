
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rospy, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rodi-robot";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/benjayah/rodi_robot-release/archive/release/kinetic/rodi_robot/0.0.1-0.tar.gz;
    sha256 = "e3eaaad3b8c4551b9d5e5514c06f457f7a15bb15d0eda26338e90df72f0d3618";
  };

  buildInputs = [ sensor-msgs roslint geometry-msgs rospy ];
  checkInputs = [ rosunit roslint ];
  propagatedBuildInputs = [ sensor-msgs roslint geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoDI ROS package.
    Allows to control a RoDI from the Robot Operating System (ROS) without the need 
    to flash a custom firmware and just using the default firmware web services API.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
