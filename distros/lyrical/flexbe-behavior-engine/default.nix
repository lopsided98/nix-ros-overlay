
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-behavior-engine";
  version = "4.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_behavior_engine/4.1.4-1.tar.gz";
    name = "4.1.4-1.tar.gz";
    sha256 = "7633e3f2847f9b811206cb68b40a7db91ad18dc49b3e6e620844d8fc65f21b41";
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
