
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-description";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_description/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "77b4f320966c7020bd9bb5f488a7483794881dd7cfa39bb2b0f8d8d7f81f8eb6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and mesh assets for the Crazyflie robot";
    license = with lib.licenses; [ mit ];
  };
}
