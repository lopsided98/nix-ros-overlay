
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, sensor-msgs, geometry-msgs, turtlebot3-bringup, ar-track-alvar, robot-state-publisher, std-msgs, catkin, rviz, ar-track-alvar-msgs, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-automatic-parking-vision";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_automatic_parking_vision/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "e83048ac1a2f6be0ca3abbaf2819e858b8b88ff4ae80d05def1c5746b215fa79";
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
