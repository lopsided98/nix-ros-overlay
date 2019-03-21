
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-kalman-filter";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/kalman_filter/0.2.4-0.tar.gz;
    sha256 = "dae8cee834dfdb902000812bf4e6141f678bf813a077dd6b6f1580a90a909876";
  };

  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin rospy ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    #license = lib.licenses.BSD;
  };
}
