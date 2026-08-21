
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-crazyflie-description";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/lyrical/crazyflie_description/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "a7f5c413900bc3e94b65e94d9ec53290da7a769a08b3e74b0d358e37d1ba6e0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and mesh assets for the Crazyflie robot";
    license = with lib.licenses; [ mit ];
  };
}
