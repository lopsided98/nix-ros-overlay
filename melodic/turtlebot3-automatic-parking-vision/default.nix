
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, sensor-msgs, catkin, ar-track-alvar-msgs, nav-msgs, rviz, turtlebot3-bringup, robot-state-publisher, rospy, std-msgs, joint-state-publisher, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-automatic-parking-vision";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_automatic_parking_vision/1.1.0-0.tar.gz;
    sha256 = "6e10d535cf4f41ac732ed8cc54edc197c35c8cf6969c2bf9b0649e37c97809ea";
  };

  buildInputs = [ ar-track-alvar sensor-msgs ar-track-alvar-msgs nav-msgs rospy std-msgs geometry-msgs ];
  propagatedBuildInputs = [ ar-track-alvar sensor-msgs ar-track-alvar-msgs nav-msgs rviz turtlebot3-bringup robot-state-publisher rospy std-msgs joint-state-publisher geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 automatic_parking which uses ar code. This example needs a printed ar code and a TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
