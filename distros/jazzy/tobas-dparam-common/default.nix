
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-common";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_common/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "e75f50c02d7bbecb8a6777094e19f06c655d30cc1c56be8e0ff7297731c714a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared names and constants for the Tobas dynamic parameter system.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
