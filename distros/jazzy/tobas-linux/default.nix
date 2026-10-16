
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cxxopts, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-linux";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_linux/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "514f0ef32922275123ab893f0d3476104ea0573822d0b90632704a144c1bee53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cxxopts tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Linux utilities for devices, processes, files, real-time scheduling, memory locking, and subprocesses.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
