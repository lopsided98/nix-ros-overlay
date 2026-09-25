
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-failsafe";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_failsafe/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "bd043b51700481248a1f0ece586d5005eab67b21d17c6eb367bec98e01ccde6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-dsp tobas-mission-items tobas-mission-msgs tobas-msgs-adapter tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vehicle health monitoring and failsafe execution nodes.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
