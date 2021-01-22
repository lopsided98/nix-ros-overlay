
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-bullet";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_bullet/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "4dacdc41e330a5f678d7b390551bb212a6f72c60bae76bd3b39a040be28501a4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
