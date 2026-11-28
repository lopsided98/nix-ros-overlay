
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclcpp-components, rcutils, rosidl-buffer-backend, rosidl-buffer-backend-registry, rosidl-runtime-cpp, rosidl-typesupport-cpp, sensor-msgs, shmem-buffer, shmem-buffer-backend-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-shmem-buffer-backend";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/rolling/shmem_buffer_backend/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8f67d450d1cb86190002d5dd994232057c235e2bba58ccec78475b4cf90d13dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros rclcpp rclcpp-components sensor-msgs std-msgs ];
  propagatedBuildInputs = [ pluginlib rcutils rosidl-buffer-backend rosidl-buffer-backend-registry rosidl-runtime-cpp rosidl-typesupport-cpp shmem-buffer shmem-buffer-backend-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Pluginlib backend for shared-memory rosidl::Buffer transport.";
    license = with lib.licenses; [ asl20 ];
  };
}
