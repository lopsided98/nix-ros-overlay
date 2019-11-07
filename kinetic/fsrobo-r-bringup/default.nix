
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fsrobo-r-driver, catkin, fsrobo-r-moveit-config, tf2-ros, fsrobo-r-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-bringup";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_bringup/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "e3318f1608d41ac70242fcf9c55a0b4ef88d28a0ca7c68d2e6445497062636c9";
  };

  buildType = "catkin";
  buildInputs = [ fsrobo-r-driver fsrobo-r-moveit-config tf2-ros fsrobo-r-description robot-state-publisher ];
  propagatedBuildInputs = [ fsrobo-r-driver fsrobo-r-moveit-config tf2-ros fsrobo-r-description robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
