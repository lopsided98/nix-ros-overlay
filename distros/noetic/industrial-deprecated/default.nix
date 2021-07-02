
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-industrial-deprecated";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/noetic/industrial_deprecated/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "ab476be2bd0e900ec9c70ef67bae63ce78345d7479ef99a113e49f7195cd7708";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Industrial deprecated package contains nodes, launch files, etc... that are slated for 
  deprecation.  This package is the last place something will end up before being deleted.  
  If you are missing a package/node and find it's contents here, then you should consider 
  a replacement.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
