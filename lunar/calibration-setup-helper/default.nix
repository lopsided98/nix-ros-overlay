
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, calibration-launch }:
buildRosPackage {
  pname = "ros-lunar-calibration-setup-helper";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/calibration_setup_helper/0.10.14-0.tar.gz;
    sha256 = "29f4738a56635b90f6c99ed62c705c4dc7cd03886e7aa693f7ccca60f3b9df1d";
  };

  propagatedBuildInputs = [ calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a script to generate calibration launch and configurationfiles for your robot.
    which is based on Michael Ferguson's calibration code'';
    license = with lib.licenses; [ asl20 ];
  };
}
