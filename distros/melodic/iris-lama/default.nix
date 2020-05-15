
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-iris-lama";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/melodic/iris_lama/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5ad7aa2e89a85120a690d48359140f3e4912f0d4159a2965547919b47ae83f74";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IRIS package for Localization and Mapping (LaMa).
        This packages includes the sparse-dense library for grid mapping,
        a 2D localization algorithm based on scan matching, an online SLAM solution
        with a dynamic likelihood field and a 2D RB Particle Filter SLAM solution
        with multithreading.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
