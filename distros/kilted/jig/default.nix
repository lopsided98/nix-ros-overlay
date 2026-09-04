
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-index-python, generate-parameter-library, lifecycle-msgs, message-filters, python3Packages, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-jig";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/kilted/jig/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "6a91438b26978f3d44443cf04c9224edb3105dc7ac8b368e740946844341ab51";
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
