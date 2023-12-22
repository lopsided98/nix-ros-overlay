
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gazebo-dev, gazebo-model-attachment-plugin-msgs, gazebo-msgs, gazebo-ros, launch-testing-ament-cmake, rclcpp, rclpy, ros2launch, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gazebo-model-attachment-plugin";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boeing_gazebo_model_attachement_plugin-release/archive/release/humble/gazebo_model_attachment_plugin/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "a5e900605c3de152f267c6c006050f0de39b2caf76d65d03c2ae1d9f1cc6d4bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ launch-testing-ament-cmake ros2launch ];
  propagatedBuildInputs = [ gazebo-dev gazebo-model-attachment-plugin-msgs gazebo-msgs gazebo-ros rclcpp rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Model Attachment Plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
