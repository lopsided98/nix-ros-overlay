
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-common";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_common/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "f8b5459265a8e7fa348cfa9bf816f03d3245fdfcff718c10a8b3f2b29f5394a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared names and constants for the Tobas dynamic parameter system.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
