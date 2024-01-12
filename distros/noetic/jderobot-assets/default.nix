
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-jderobot-assets";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/noetic/jderobot_assets/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3c11d5065095615c276e2e67a4b940545a0a8e7faf1208f7f678a688c1242cca";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
