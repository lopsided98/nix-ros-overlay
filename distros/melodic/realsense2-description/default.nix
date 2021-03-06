
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-melodic-realsense2-description";
  version = "2.2.22-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/melodic/realsense2_description/2.2.22-1.tar.gz";
    name = "2.2.22-1.tar.gz";
    sha256 = "930fc359ec864cbe8ac7f8c68b334189b0140c453785469ac503ecae411d76d6";
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
