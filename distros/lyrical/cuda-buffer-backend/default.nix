
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cuda-buffer, cuda-buffer-backend-msgs, launch-ros, launch-testing, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-components, rcutils, rosidl-buffer-backend, rosidl-buffer-backend-registry, rosidl-runtime-cpp, rosidl-typesupport-cpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-cuda-buffer-backend";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/cuda_buffer_backend/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9d8bf241afe0616ea8863d4c32103226e8b1e54579a136b198fa2bda9ff5e1d6";
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
