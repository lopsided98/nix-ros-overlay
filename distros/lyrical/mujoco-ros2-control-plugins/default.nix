
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, backward-ros, geometry-msgs, glfw3, libGL, libGLU, mujoco-3d-lidar, mujoco-ros2-control-msgs, mujoco-vendor, pluginlib, rclcpp, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-ros2-control-plugins";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/lyrical/mujoco_ros2_control_plugins/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4fc11bd3d913c68210354e3b18e8f0b2a560b39c25366fd42a1da0f397d71509";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp mujoco-3d-lidar ];
  propagatedBuildInputs = [ backward-ros geometry-msgs glfw3 libGL libGLU mujoco-ros2-control-msgs mujoco-vendor pluginlib rclcpp realtime-tools ros2-control-cmake sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugin package for mujoco_ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
