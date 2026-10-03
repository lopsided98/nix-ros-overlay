
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cxxopts, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-linux";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_linux/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "cd64482ecd3ec018de0d6a1893fe6fdf985f34e39097e38bdb6d02bde92bf95f";
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
