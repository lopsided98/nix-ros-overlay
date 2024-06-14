
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-iron-flexbe-behavior-engine";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_behavior_engine/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "8312458694395bceef7cb62e72c18e750aa5bfadfbb3cf22019d9af479e9af5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ flexbe-core flexbe-input flexbe-mirror flexbe-msgs flexbe-onboard flexbe-states flexbe-testing flexbe-widget ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A meta-package to aggregate all the FlexBE packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
