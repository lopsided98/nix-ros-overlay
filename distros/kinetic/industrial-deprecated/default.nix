
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-industrial-deprecated";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_deprecated/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "bc971cd4410831deee27354a9bfb475fb0557622cff4fee2c3e8e5ad623e63ac";
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
