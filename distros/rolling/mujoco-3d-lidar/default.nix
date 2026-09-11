
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mujoco-vendor }:
buildRosPackage {
  pname = "ros-rolling-mujoco-3d-lidar";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/rolling/mujoco_3d_lidar/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "95f06ca86041971097915896d547d27c39b9925c14a2285197e94db760cf84a8";
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
