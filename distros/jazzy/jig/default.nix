
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-index-python, generate-parameter-library, lifecycle-msgs, message-filters, python3Packages, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-jig";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/jazzy/jig/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "835f6954230a867f503a583ad1525cf3eb8cb3e8ea2d9bcf3c7805756b2d025e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python generate-parameter-library rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python lifecycle-msgs message-filters python3Packages.jinja2 python3Packages.jsonschema python3Packages.pyyaml rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle rosidl-default-runtime tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python generate-parameter-library ];

  meta = {
    description = "Declarative ROS 2 node scaffolding with built-in best practice.";
    license = with lib.licenses; [ asl20 ];
  };
}
