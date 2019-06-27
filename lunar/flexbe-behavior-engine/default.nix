
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, flexbe-states, flexbe-onboard, flexbe-core, flexbe-input, flexbe-widget, flexbe-testing, flexbe-mirror }:
buildRosPackage {
  pname = "ros-lunar-flexbe-behavior-engine";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_behavior_engine/1.2.1-1.tar.gz;
    sha256 = "ef1aa4bc8ff835db282cc8cc30c4dcb965d0364af7804224d8c9e633d6a04a58";
  };

  propagatedBuildInputs = [ flexbe-msgs flexbe-mirror flexbe-states flexbe-onboard flexbe-input flexbe-widget flexbe-testing flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
