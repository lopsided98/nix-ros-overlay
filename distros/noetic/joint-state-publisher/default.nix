
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "aae43d5818ec452e464bf1156b1449b291ce25f76e3de8f4d9666065ceada8f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
