
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, flexbe-states, flexbe-onboard, flexbe-core, flexbe-input, flexbe-widget, flexbe-testing, flexbe-mirror }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-behavior-engine";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_behavior_engine/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "352ffb38f57dcc8b92add7c0441621231692810b42d62c069064a4202c742498";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs flexbe-mirror flexbe-states flexbe-onboard flexbe-input flexbe-widget flexbe-testing flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
