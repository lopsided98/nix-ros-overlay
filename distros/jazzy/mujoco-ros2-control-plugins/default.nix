
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, backward-ros, geometry-msgs, glfw3, libGL, libGLU, mujoco-3d-lidar, mujoco-ros2-control-msgs, mujoco-vendor, pluginlib, rclcpp, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mujoco-ros2-control-plugins";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/jazzy/mujoco_ros2_control_plugins/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "04d254ce47c155c9ba8d47a060f938bde6e40c84e5dc9045e199e030ae805ee8";
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
