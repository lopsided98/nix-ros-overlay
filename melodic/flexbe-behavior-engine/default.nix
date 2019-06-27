
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, flexbe-states, flexbe-onboard, flexbe-core, flexbe-input, flexbe-widget, flexbe-testing, flexbe-mirror }:
buildRosPackage {
  pname = "ros-melodic-flexbe-behavior-engine";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_behavior_engine/1.2.1-1.tar.gz;
    sha256 = "8ff2dd2151333601cc05722d2235cc3d13a69c9762e798d8d851b3519a0d1894";
  };

  propagatedBuildInputs = [ flexbe-msgs flexbe-mirror flexbe-states flexbe-onboard flexbe-input flexbe-widget flexbe-testing flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
