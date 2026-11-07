
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer-py";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer_py/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "2825dd496d46e0a126501176f246d59919ab2f9eadb52bcbdb5f65f35d720ee6";
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
