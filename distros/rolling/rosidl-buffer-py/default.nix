
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-py";
  version = "5.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_py/5.2.0-2.tar.gz";
    name = "5.2.0-2.tar.gz";
    sha256 = "5bc37ecae2af9a8e0218bfe6318481c65158740b9d89a93f92fd7574e6c2c359";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-buffer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python bindings for rosidl::Buffer, providing a Buffer class that
    supports vendor-specific memory backends (CPU, GPU, custom) for rclpy users.";
    license = with lib.licenses; [ asl20 ];
  };
}
