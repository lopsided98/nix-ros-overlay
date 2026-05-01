
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-behavior-engine";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_behavior_engine/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "7082e3355603940a226a341a2340046147e7f085c3a527f761d365694d443e94";
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
