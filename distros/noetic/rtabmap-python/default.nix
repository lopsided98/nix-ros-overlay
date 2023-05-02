
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-python";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_python/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "97c7ddd46c8f0d7dfccd609a561135f16db5610ad812a913d7e3ed5a22bea884";
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
