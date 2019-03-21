
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, flexbe-mirror, catkin, flexbe-states, flexbe-onboard, flexbe-input, flexbe-widget, flexbe-testing, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-behavior-engine";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_behavior_engine/1.1.1-0.tar.gz;
    sha256 = "ba2eab7f7d934bdd7c34589630140c386b4f8ea5f206ac50189002658fb05160";
  };

  propagatedBuildInputs = [ flexbe-input flexbe-widget flexbe-msgs flexbe-testing flexbe-mirror flexbe-onboard flexbe-states flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    #license = lib.licenses.BSD;
  };
}
