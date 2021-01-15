
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fsrobo-r-description, fsrobo-r-driver, fsrobo-r-moveit-config, robot-state-publisher, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-bringup";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_bringup/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "d996724fc8a51fb5fd07fe53ddc2c138cd5d3f98d2347ca10f45b562d1014da6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fsrobo-r-description fsrobo-r-driver fsrobo-r-moveit-config robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
