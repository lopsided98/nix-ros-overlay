
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-mirror";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_mirror/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "d5b3531784820f0f4ceb53eb53554eb98282f35ddce037e9f694d872bcbc954e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
