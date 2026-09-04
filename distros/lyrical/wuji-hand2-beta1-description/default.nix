
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-wuji-hand2-beta1-description";
  version = "2026.8.19-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-description-release/archive/release/lyrical/wuji_hand2_beta1_description/2026.8.19-1.tar.gz";
    name = "2026.8.19-1.tar.gz";
    sha256 = "55e7f0eefe9207f7e6ca52a20ccb73d8ae02e8fdc2aec0dfd8b414ffdcc038cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model description package for Wuji Hand 2 (Beta 1) with URDF, MJCF, and USD assets for simulation and ROS2 visualization.";
    license = with lib.licenses; [ mit ];
  };
}
