
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cxxopts, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-linux";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_linux/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "50f5f21452acf04ebaceeeac0335ea5a602f27383a981d099d1473ffe28b2f2e";
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
