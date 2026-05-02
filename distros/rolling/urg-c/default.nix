
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-urg-c";
  version = "1.0.4001-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/rolling/urg_c/1.0.4001-6.tar.gz";
    name = "1.0.4001-6.tar.gz";
    sha256 = "2025b5603aa0ad6c06b13b704aa5430c01481bc56759e8ab0088f746f5147587";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The urg_c package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
