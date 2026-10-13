
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mujoco-vendor }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-3d-lidar";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/lyrical/mujoco_3d_lidar/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "c7731eda92cee1e2e9dd93b4bc9090cc11c65c3096247ef17e279f70bfec57e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mujoco-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugin for mujoco to use raycasters to simulate lidar";
    license = with lib.licenses; [ asl20 ];
  };
}
