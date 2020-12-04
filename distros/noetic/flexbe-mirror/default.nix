
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-mirror";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_mirror/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "4010d9e4ff70d596c37c29a4635058ee622a450048618aeaa2833e22f5839e67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
