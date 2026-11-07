
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-wuji-hand2-1-description";
  version = "2026.10.12-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-description-release/archive/release/lyrical/wuji_hand2_1_description/2026.10.12-1.tar.gz";
    name = "2026.10.12-1.tar.gz";
    sha256 = "951e12dc420e2ae8842af660816cc82a1859e4411f86c371cfea3366c8eb9fa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model description package for Wuji Hand 2.1 with URDF, MJCF, and USD assets for simulation and ROS2 visualization. Hand 2.1 keeps the frozen Wuji Hand 2 coordinate contract, is rooted at its arm-flange mount link, and adds a wrist IMU frame. This package provides left and right models without covers.";
    license = with lib.licenses; [ mit ];
  };
}
