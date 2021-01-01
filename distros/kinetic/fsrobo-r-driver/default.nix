
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fsrobo-r-msgs, industrial-robot-client, roslaunch, rostest, urdf }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-driver";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_driver/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "d4aed707bf62d4270ff38dc00397d7ef465e706f2700fa5932d705f073c1b626";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ fsrobo-r-msgs industrial-robot-client urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
