
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-noetic-flexbe-behavior-engine";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_behavior_engine/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "8f4404d2bf6d50bf765d631a6b1435288eaa91238884126b00f05c8af1bd343d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flexbe-core flexbe-input flexbe-mirror flexbe-msgs flexbe-onboard flexbe-states flexbe-testing flexbe-widget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A meta-package to aggregate all the FlexBE packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
