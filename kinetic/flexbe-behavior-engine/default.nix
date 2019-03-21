
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, flexbe-mirror, catkin, flexbe-states, flexbe-onboard, flexbe-input, flexbe-widget, flexbe-testing, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-behavior-engine";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_behavior_engine/1.1.1-0.tar.gz;
    sha256 = "4236e4247f122f7fb89d0b9b4b5e6c089d62d1de822ece728115e643107cf505";
  };

  propagatedBuildInputs = [ flexbe-input flexbe-widget flexbe-msgs flexbe-testing flexbe-mirror flexbe-onboard flexbe-states flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    #license = lib.licenses.BSD;
  };
}
