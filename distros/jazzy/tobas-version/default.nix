
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-version";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_version/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "a67d64ac59e9784a41042e0782cfe53cce8b1cf9ae7c5d6ca14747373a8aacc7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compile-time and runtime access to the Tobas software version.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
