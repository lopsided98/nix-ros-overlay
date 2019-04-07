
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, libqglviewer, catkin, octomap, cmake }:
buildRosPackage {
  pname = "ros-melodic-octovis";
  version = "1.9.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap-release/archive/release/melodic/octovis/1.9.0-1.tar.gz;
    sha256 = "3edf836edd904daf7f76b13dad10d4094e37a5a8c5829193fe1b583e62f2c8ef";
  };

  buildInputs = [ qt4 libqglviewer octomap ];
  propagatedBuildInputs = [ qt4 catkin libqglviewer octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    #license = lib.licenses.GPLv2;
  };
}
