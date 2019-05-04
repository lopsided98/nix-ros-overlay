
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, tf, nav-core, catkin, nav-msgs, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-smp-ros";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ksatyaki/smp_ros-release/archive/release/kinetic/smp_ros/1.0.1-0.tar.gz;
    sha256 = "ff54e2019ba4c3386694207c2e9d4e0aaa7d21adda11ce515ee5e58aab292de3";
  };

  buildInputs = [ costmap-2d nav-core roscpp nav-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d nav-core roscpp nav-msgs std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The smp_ros package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
