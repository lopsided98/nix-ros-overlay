
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, cartographer, catkin, gmapping, map-server, move-base, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-mrp2-navigation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/mrp2_navigation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c1112b94a3dbe6edf34a3f4c7befea2e5b51ade35db801a2460e7270fff724d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl cartographer gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files, parameters and maps for different navigation applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
