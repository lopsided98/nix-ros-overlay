
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-volta-base";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_base/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c62fba959221171fc1e1fce8a4d791d62806e96109fe75433aba3b42a38bad81";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_base package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
