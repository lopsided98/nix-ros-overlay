
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robosense-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/tomlogan501/robosense_simulator_release/archive/release/melodic/robosense_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "711a171a2514b9963b1d059222720ba135ee23f6a1f54cf010625922aac6eebe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Robosense laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
