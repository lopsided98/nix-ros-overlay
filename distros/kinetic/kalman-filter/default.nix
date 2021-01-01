
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy }:
buildRosPackage {
  pname = "ros-kinetic-kalman-filter";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/kalman_filter/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8c16221b1f5444ac282ed1ee2a3547365989ed16ec9c716663d5fe2ca8ffccc2";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
