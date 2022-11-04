
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-iris-lama";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/melodic/iris_lama/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "50395fa0959650024b0ff00692fb86b9d37b7aea8d330cd82a63a9ee917c121a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
