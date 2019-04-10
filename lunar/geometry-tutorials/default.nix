
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf2, turtle-tf }:
buildRosPackage {
  pname = "ros-lunar-geometry-tutorials";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_tutorials-release/archive/release/lunar/geometry_tutorials/0.2.2-0.tar.gz;
    sha256 = "ca75216142918e356e1d29d5f5dc76bc59cd966efd51ebbc12ab42ccd00fc239";
  };

  propagatedBuildInputs = [ turtle-tf2 turtle-tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    #license = lib.licenses.BSD;
  };
}
