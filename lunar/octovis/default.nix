
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, libqglviewer, catkin, octomap, cmake }:
buildRosPackage {
  pname = "ros-lunar-octovis";
  version = "1.9.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap-release/archive/release/lunar/octovis/1.9.0-0.tar.gz;
    sha256 = "028f1cc7f6d6d8f2308c9e6aba294032f129eac75877228bf1a476f71e70385d";
  };

  buildInputs = [ qt4 libqglviewer octomap ];
  propagatedBuildInputs = [ qt4 catkin libqglviewer octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
