
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-realsense2-description";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/noetic/realsense2_description/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "c986f289f83fca204f50e85d2d33f3a2784e5267c8f5aa07bf2b547b1265e8be";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera description package for Intel 3D D400 cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
