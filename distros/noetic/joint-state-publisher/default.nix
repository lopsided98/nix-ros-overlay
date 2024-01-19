
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "e12c52894f255b6b5682d14ebe3a12c0d865a72d92455992987a31e51922115a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
