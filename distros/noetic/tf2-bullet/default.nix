
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-bullet";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_bullet/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "b927d54fb0193c76936808c475ed9b1e7db1ea70500fa61dc06713f2f51353cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
