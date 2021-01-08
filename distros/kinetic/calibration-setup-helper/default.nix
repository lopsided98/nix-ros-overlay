
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-launch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-calibration-setup-helper";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_setup_helper/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "f8fe7b9c86ffdbe13ae1798395eef2b28434443a660769f591930409b59101f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a script to generate calibration launch and configurationfiles for your robot.
    which is based on Michael Ferguson's calibration code'';
    license = with lib.licenses; [ asl20 ];
  };
}
