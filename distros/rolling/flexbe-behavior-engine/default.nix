
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-rolling-flexbe-behavior-engine";
  version = "4.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_behavior_engine/4.0.3-2.tar.gz";
    name = "4.0.3-2.tar.gz";
    sha256 = "72b49832330fbfd309d46b562c13df145fd5fe87d20348e0725d65ca8b145c1a";
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
