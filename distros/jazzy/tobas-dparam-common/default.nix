
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "715deac2040a33c20dbcf572e23e9ba9ff959f601d14e9f73fe766caba5779d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared names and constants for the Tobas dynamic parameter system.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
