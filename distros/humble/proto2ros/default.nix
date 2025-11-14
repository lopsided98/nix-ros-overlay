
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, clang, protobuf, python3Packages, rclcpp, rclpy, rosidl-adapter, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-proto2ros";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/bdaiinstitute/proto2ros-release/archive/release/humble/proto2ros/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "46c3245be58336e60e4d89d8b1f0071e9e886b28dd4ec114749d9ebc34e37ac1";
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
