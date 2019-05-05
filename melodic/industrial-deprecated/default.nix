
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-industrial-deprecated";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_deprecated/0.7.0-0.tar.gz;
    sha256 = "22330dbdb44092750340bbd8a283441f65bd0135ddc3c08d5535736d0ceec9c9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Industrial deprecated package contains nodes, launch files, etc... that are slated for 
  deprecation.  This package is the last place something will end up before being deleted.  
  If you are missing a package/node and find it's contents here, then you should consider 
  a replacement.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
