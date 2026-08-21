
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-crazyflie-description";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/rolling/crazyflie_description/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "bb6809614ffaf08bba2f7fdecabddb03cd720f144d990a038097e391b4544826";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and mesh assets for the Crazyflie robot";
    license = with lib.licenses; [ mit ];
  };
}
