
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, clang, protobuf, python3Packages, rclcpp, rclpy, rosidl-adapter, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-proto2ros";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/rai-opensource/proto2ros-release/archive/release/humble/proto2ros/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "3d34c9c17c86739417e65f93165001f91fc98aa3437129235c00bbda4674e274";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python clang ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-cmake-mypy builtin-interfaces protobuf python3Packages.inflection python3Packages.jinja2 python3Packages.multipledispatch python3Packages.networkx python3Packages.numpy python3Packages.protobuf python3Packages.pyyaml rclcpp rclpy rosidl-adapter rosidl-default-generators rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-mypy ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Protobuf to ROS 2 interoperability interfaces";
    license = with lib.licenses; [ mit ];
  };
}
