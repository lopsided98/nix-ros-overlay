
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclcpp-components, rcutils, rosidl-buffer-backend, rosidl-buffer-backend-registry, rosidl-runtime-cpp, rosidl-typesupport-cpp, sensor-msgs, shared-buffer, shared-buffer-backend-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-shared-buffer-backend";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/lyrical/shared_buffer_backend/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "3d1f74c074debac8946f1bc13fe5eda47aa50becd39f1cc7bdec8f579e2a26f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros rclcpp rclcpp-components sensor-msgs std-msgs ];
  propagatedBuildInputs = [ pluginlib rcutils rosidl-buffer-backend rosidl-buffer-backend-registry rosidl-runtime-cpp rosidl-typesupport-cpp shared-buffer shared-buffer-backend-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Pluginlib backend for shared-memory rosidl::Buffer transport.";
    license = with lib.licenses; [ asl20 ];
  };
}
