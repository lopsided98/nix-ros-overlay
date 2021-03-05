
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-realsense2-description";
  version = "2.2.22-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/noetic/realsense2_description/2.2.22-1.tar.gz";
    name = "2.2.22-1.tar.gz";
    sha256 = "641098008e6d40aaee4fd97dfc77164cbb4b074b48d615cebf6319a854253494";
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
