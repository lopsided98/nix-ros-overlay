
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cxxopts, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-linux";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_linux/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "1162379206c5b8435b46b46d86b808cb3e0537a32295cf109e5ea8196339fa4b";
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
