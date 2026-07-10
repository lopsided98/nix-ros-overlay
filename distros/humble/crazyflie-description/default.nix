
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-crazyflie-description";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie_description/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "c145afdd40eea5d7c41864ef4667af68c1e06b81e8d51c8c8e56a68991c3104c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and mesh assets for the Crazyflie robot";
    license = with lib.licenses; [ mit ];
  };
}
