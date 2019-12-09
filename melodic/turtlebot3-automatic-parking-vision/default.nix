
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, sensor-msgs, geometry-msgs, turtlebot3-bringup, ar-track-alvar, robot-state-publisher, std-msgs, catkin, rviz, ar-track-alvar-msgs, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-automatic-parking-vision";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_automatic_parking_vision/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "6e10d535cf4f41ac732ed8cc54edc197c35c8cf6969c2bf9b0649e37c97809ea";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs ar-track-alvar std-msgs ar-track-alvar-msgs rospy nav-msgs ];
  propagatedBuildInputs = [ joint-state-publisher sensor-msgs geometry-msgs turtlebot3-bringup ar-track-alvar robot-state-publisher std-msgs rviz ar-track-alvar-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 automatic_parking which uses ar code. This example needs a printed ar code and a TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
