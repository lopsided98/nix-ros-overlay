
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-description, multisense-ros, catkin, multisense-cal-check, multisense-bringup, multisense-lib }:
buildRosPackage {
  pname = "ros-lunar-multisense";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense/4.0.2-1.tar.gz;
    sha256 = "cfcf7d32f6ffd1688738aaa5d74f6b749f6825f6b4187526f30156d686886afe";
  };

  propagatedBuildInputs = [ multisense-bringup multisense-description multisense-ros multisense-lib multisense-cal-check ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    #license = lib.licenses.BSD;
  };
}
