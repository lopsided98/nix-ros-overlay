
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rostest, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-joint-state-publisher";
  version = "1.12.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/joint_state_publisher-release/archive/release/lunar/joint_state_publisher/1.12.13-0.tar.gz;
    sha256 = "ce84f37b1b99bfca7f61e030598e8f56a837e8d1a28c0ee1c956bcac4f4b6077";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
