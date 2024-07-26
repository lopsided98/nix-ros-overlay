
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, image-transport-plugins, rclpy, ros-gz, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-nicla-vision-ros2";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nicla_vision_ros2-release/archive/release/humble/nicla_vision_ros2/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "19041c301e75468cf15fa14199d6ddf23f6d4f1e170bb541c0ccf9110621d90a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport-plugins rclpy ros-gz rosidl-default-runtime sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Integration of the Arduino Nicla Vision board in the ROS2 world. 
    Sensors data from the Nicla Vision is collected and trasmited to the relevant ROS2 topics";
    license = with lib.licenses; [ asl20 ];
  };
}
