
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclcpp-components, rcutils, rosidl-buffer-backend, rosidl-buffer-backend-registry, rosidl-runtime-cpp, rosidl-typesupport-cpp, sensor-msgs, shmem-buffer, shmem-buffer-backend-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-shmem-buffer-backend";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/lyrical/shmem_buffer_backend/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4859fef937bc6261dc081cd1a291a8568fab205991e156b6a7cb9eb18a1c98c1";
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
