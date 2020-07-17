
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-description";
  version = "2.2.15-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_description/2.2.15-1.tar.gz";
    name = "2.2.15-1.tar.gz";
    sha256 = "2f45a4014448a2fd760a70bdbba34c961159f580242d3e78b7e6d94b8d943275";
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
