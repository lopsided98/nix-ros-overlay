
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-input, flexbe-core, flexbe-testing, flexbe-mirror, catkin, flexbe-widget, flexbe-states, flexbe-msgs, flexbe-onboard }:
buildRosPackage {
  pname = "ros-melodic-flexbe-behavior-engine";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_behavior_engine/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "f92a236be23a7556d107988e52fdde47cf251844cdd9eaa6d8c66f2f5a363472";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-input flexbe-core flexbe-testing flexbe-mirror flexbe-widget flexbe-states flexbe-msgs flexbe-onboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
