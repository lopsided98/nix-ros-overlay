
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-melodic-octovis";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/melodic/octovis/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "ea018124bcf6f33cf750c056ff7ca5b8ebcc069b807e5b02df09db2768db27f7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin libsForQt5.libqglviewer octomap qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
