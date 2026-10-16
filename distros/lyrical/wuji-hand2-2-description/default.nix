
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-wuji-hand2-2-description";
  version = "2026.10.12-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-description-release/archive/release/lyrical/wuji_hand2_2_description/2026.10.12-1.tar.gz";
    name = "2026.10.12-1.tar.gz";
    sha256 = "2cba91140459fe12c12dff0a835a1b6d234a9cce50a3d6b91bc17a3b5380be67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model description package for Wuji Hand 2.2 with URDF, MJCF, and USD assets for simulation and ROS2 visualization. Hand 2.2 is Hand 2.1 plus one tactile-sensor pad link per fingertip. This package provides left and right models without covers.";
    license = with lib.licenses; [ mit ];
  };
}
