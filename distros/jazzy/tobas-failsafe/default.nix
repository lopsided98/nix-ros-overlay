
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-failsafe";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_failsafe/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "509115243415b78d0a94485a1861aeabf87aaf75c30b82212a4261a3cfda097a";
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
