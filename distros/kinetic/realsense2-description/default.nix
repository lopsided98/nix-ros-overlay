
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-description";
  version = "2.2.18-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_description/2.2.18-1.tar.gz";
    name = "2.2.18-1.tar.gz";
    sha256 = "f985d9e9dc88e7f9caad841a9bda79753694dd2cca4ed163925c0aeb811dddac";
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
