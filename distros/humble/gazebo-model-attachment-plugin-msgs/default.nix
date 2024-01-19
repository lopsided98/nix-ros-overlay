
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, launch-testing-ament-cmake, rclcpp, rclpy, ros2launch, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gazebo-model-attachment-plugin-msgs";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boeing_gazebo_model_attachement_plugin-release/archive/release/humble/gazebo_model_attachment_plugin_msgs/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "ddf7f9a4f3130495c89e8aeee69e14878cfffd0b4d7ad7a5d8c91f203bb074b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-cpplint launch-testing-ament-cmake ros2launch ];
  propagatedBuildInputs = [ ament-cmake-cppcheck ament-cmake-cpplint rclcpp rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-python ];

  meta = {
    description = ''Model Attachment Plugin'';
    license = with lib.licenses; [ "Boeing-Proprietary" ];
  };
}
