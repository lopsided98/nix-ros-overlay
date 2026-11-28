
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-common";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_common/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "82344993586a6c75943c4c555215802e5dbf6c00863e2a3efb07663bc0e6b8cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared names and constants for the Tobas dynamic parameter system.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
