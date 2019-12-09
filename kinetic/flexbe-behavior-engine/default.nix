
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-input, flexbe-core, flexbe-testing, flexbe-mirror, catkin, flexbe-widget, flexbe-states, flexbe-msgs, flexbe-onboard }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-behavior-engine";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_behavior_engine/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "ee39b8dbf01f2ec035433251875fcff4a6a1f448c6102b69b7a5c93cc3f244d9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-input flexbe-core flexbe-testing flexbe-mirror flexbe-widget flexbe-states flexbe-msgs flexbe-onboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
