
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-jderobot-assets";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/noetic/jderobot_assets/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "18f0a42e849e660c34cbf137c92486d632ad7b28536cca0bc67b5e21559749db";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
