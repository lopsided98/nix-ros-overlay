
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, backward-ros, geometry-msgs, glfw3, libGL, libGLU, mujoco-3d-lidar, mujoco-ros2-control-msgs, mujoco-vendor, pluginlib, rclcpp, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-ros2-control-plugins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/lyrical/mujoco_ros2_control_plugins/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "d10832c6171be6e90ae0e545d2832de62eae89d13c1ede68a39771f648cdaebd";
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
