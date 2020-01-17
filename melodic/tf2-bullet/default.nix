
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-melodic-tf2-bullet";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_bullet/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "0cd02f568c25969428c38c409badfab9ab5b1a16598bc029f7de133b5938943b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
