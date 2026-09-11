
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mujoco-vendor }:
buildRosPackage {
  pname = "ros-humble-mujoco-3d-lidar";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/humble/mujoco_3d_lidar/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "7c801c9a83b53e3a17e35f9c84859554224b082442ace2e79f95c377bd6666af";
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
