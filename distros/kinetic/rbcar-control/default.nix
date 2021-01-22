
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-control";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_control/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "e217c86778fdb66afbda9fd48792ddb5271ea57e59e1a6bdcd9583753089893c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
