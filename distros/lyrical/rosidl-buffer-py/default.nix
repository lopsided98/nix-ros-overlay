
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer-py";
  version = "5.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer_py/5.2.0-3.tar.gz";
    name = "5.2.0-3.tar.gz";
    sha256 = "5c154479c1e29eec3e40e989d62a22223ed26f9ed427196f9b9d8f0e85aef91c";
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
