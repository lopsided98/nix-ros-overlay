
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-description, create-driver, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-melodic-create-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/melodic/create_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0f544615b9bdbf07da624abbf4b2a73c90fe8cc4b56e37452d7aa2eb4aa1ddb4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ create-description create-driver joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for common accessories when working with Create/Roomba platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
