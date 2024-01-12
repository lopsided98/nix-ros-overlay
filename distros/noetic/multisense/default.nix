
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-bringup, multisense-cal-check, multisense-description, multisense-lib, multisense-ros }:
buildRosPackage {
  pname = "ros-noetic-multisense";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "ddde54a00047819f054bcc20b9ca09073e8edf2930acabea01cefc6c183db9be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ multisense-bringup multisense-cal-check multisense-description multisense-lib multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
