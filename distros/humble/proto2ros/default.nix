
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, clang, protobuf, python3Packages, rclcpp, rclpy, rosidl-adapter, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-proto2ros";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/bdaiinstitute/proto2ros-release/archive/release/humble/proto2ros/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "c9935ade33305a9c0ecec253ab0d2718da669eef0361db153b10bce0edace7f8";
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
