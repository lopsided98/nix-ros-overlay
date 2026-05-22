
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cuda-buffer, cuda-buffer-backend-msgs, launch-ros, launch-testing, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-components, rcutils, rosidl-buffer-backend, rosidl-buffer-backend-registry, rosidl-runtime-cpp, rosidl-typesupport-cpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-cuda-buffer-backend";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/cuda_buffer_backend/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "aa077ce9aac5ccb09864355bbfd6fb075fb92521c4431a22499b701cb1acb6f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake rclcpp rclcpp-components sensor-msgs std-msgs ];
  propagatedBuildInputs = [ cuda-buffer cuda-buffer-backend-msgs pluginlib rcutils rosidl-buffer-backend rosidl-buffer-backend-registry rosidl-runtime-cpp rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Pluginlib backend for CUDA-backed rosidl::Buffer transport,
  using CUDA IPC when available and CPU fallback otherwise.";
    license = with lib.licenses; [ asl20 ];
  };
}
