
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cxxopts, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-linux";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_linux/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e75490a4892096e67b010e62a307b2fc14bf71c8958b9863c582c0e77164d712";
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
