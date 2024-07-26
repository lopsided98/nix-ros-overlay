
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-python";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_python/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "de146448c54e369798ba206c7c70798452bc50a9b89e965c93ad9ec7b5d96950";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's python package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
