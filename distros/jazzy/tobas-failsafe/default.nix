
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-failsafe";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_failsafe/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "58023374ac8bac44dcce320a634eb6189c58fc701a1ffcd912c479697008090a";
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
