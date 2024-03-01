
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-python";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_python/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "d72002531472bc2fdb37902da988e66d60f2332a30ad166c66de450a446eb596";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's python package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
