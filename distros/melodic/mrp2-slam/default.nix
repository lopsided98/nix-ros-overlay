
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-mrp2-slam";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/mrp2_slam/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "207c284c5bd45d3fdff2deb47ca84513c5739991cf9082d62ec841d742e068a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for mapping operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
