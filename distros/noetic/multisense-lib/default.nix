
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-noetic-multisense-lib";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_lib/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "9595ddb4d09a5b328c56dfb328ee99b28c9c65043fdd085f604cf4b7149e99a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
