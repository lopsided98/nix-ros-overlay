
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf, turtle-tf2 }:
buildRosPackage {
  pname = "ros-melodic-geometry-tutorials";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/melodic/geometry_tutorials/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "681b5bd03623bc5832921eeb3d314a4f8d9dfbf05f7f48fb48adf327bfc4e2ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtle-tf turtle-tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
