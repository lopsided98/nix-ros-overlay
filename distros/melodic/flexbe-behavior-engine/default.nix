
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-melodic-flexbe-behavior-engine";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_behavior_engine/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "22bbdba318a608e0f7005c9e2dd4eed5c141d3b3fccf6e122596c093ce8d6a6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-input flexbe-mirror flexbe-msgs flexbe-onboard flexbe-states flexbe-testing flexbe-widget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
