
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin }:
buildRosPackage {
  pname = "ros-kinetic-kalman-filter";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/kalman_filter/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "bb6f05577b69f4d215ad358c43736840b8b5ad26906b6f359ee118e7bb1ac7b7";
  };

  buildType = "catkin";
  buildInputs = [ rospy ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
