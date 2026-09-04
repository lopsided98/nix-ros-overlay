
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-wuji-hand2-beta2-description";
  version = "2026.8.19-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-description-release/archive/release/lyrical/wuji_hand2_beta2_description/2026.8.19-1.tar.gz";
    name = "2026.8.19-1.tar.gz";
    sha256 = "d13dea63c643ced3741a27d9e4dd49f0b02a8497fe472410b38f6b33b47e2c54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model description package for Wuji Hand 2 (Beta 2) with URDF, MJCF, and USD assets for simulation and ROS2 visualization. Beta 2 keeps the frozen Beta 1 coordinate contract and adds one tactile-sensor pad link per fingertip.";
    license = with lib.licenses; [ mit ];
  };
}
