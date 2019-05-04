
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, libqglviewer, catkin, octomap, cmake }:
buildRosPackage {
  pname = "ros-kinetic-octovis";
  version = "1.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap-release/archive/release/kinetic/octovis/1.8.1-0.tar.gz;
    sha256 = "3c29b6a392cf48985126527130fdc378e60e0987e2cd63c65cdda6e90bbc282b";
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
