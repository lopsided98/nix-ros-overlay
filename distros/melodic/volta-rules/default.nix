
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-volta-rules";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_rules/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "9c57ce850b0f102782315edce77cdcc43e6008b839289d440a7cc2c21944263c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_rules package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
