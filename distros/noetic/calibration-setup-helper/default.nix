
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-launch, catkin }:
buildRosPackage {
  pname = "ros-noetic-calibration-setup-helper";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/calibration_setup_helper/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "c03aba4f47f351f5a1aca2b3ce28e19395c430f3d88f502d8339c8daa01687ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a script to generate calibration launch and configurationfiles for your robot.
    which is based on Michael Ferguson's calibration code'';
    license = with lib.licenses; [ asl20 ];
  };
}
