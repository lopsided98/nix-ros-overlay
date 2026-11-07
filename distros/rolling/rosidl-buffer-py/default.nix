
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-py";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_py/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "ec510c9ecd6fe22a3ad2becebe4619ba8c979531181fca3dcf7859e7c079f9d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-buffer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core ];

  meta = {
    description = "Python bindings for rosidl::Buffer, providing a Buffer class that
    supports vendor-specific memory backends (CPU, GPU, custom) for rclpy users.";
    license = with lib.licenses; [ asl20 ];
  };
}
