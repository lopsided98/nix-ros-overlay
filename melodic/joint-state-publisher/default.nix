
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rostest, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-joint-state-publisher";
  version = "1.12.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/joint_state_publisher-release/archive/release/melodic/joint_state_publisher/1.12.13-0.tar.gz;
    sha256 = "47bcd5c3c46ffd2d73ee0910bf584a3a23be56e2e423f3849b8771e55fe6fe8e";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    #license = lib.licenses.BSD;
  };
}
