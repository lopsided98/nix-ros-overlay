
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf, turtle-tf2 }:
buildRosPackage {
  pname = "ros-noetic-geometry-tutorials";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/noetic/geometry_tutorials/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "58b0ecb64acf567e9bc62efb6252452443c399d98701edc9bbbb295d9999ecb4";
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
