
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, flexbe-states, flexbe-onboard, flexbe-core, flexbe-input, flexbe-widget, flexbe-testing, flexbe-mirror }:
buildRosPackage {
  pname = "ros-melodic-flexbe-behavior-engine";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_behavior_engine/1.1.2-0.tar.gz;
    sha256 = "3f0feef628758ab5214a812febdc06c807f9a63e347ff60b0e646f137998b68c";
  };

  propagatedBuildInputs = [ flexbe-msgs flexbe-mirror flexbe-states flexbe-onboard flexbe-input flexbe-widget flexbe-testing flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
