
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "beddd248a4bdb8434c627b98ec548ebb007cf63c613e5e6f5df98b7b28f027aa";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
