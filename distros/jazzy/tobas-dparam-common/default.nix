
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-common";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_common/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "5890438e28a222a0acafb4aab6565d3fa3c6d65cf1805fa63c3c51fa21980b0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared names and constants for the Tobas dynamic parameter system.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
