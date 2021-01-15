
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-iris-lama";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/melodic/iris_lama/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "819d1176a2b631109337b9309d86a1cb3b277daa7307c33b2f658ea110f97b4b";
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
