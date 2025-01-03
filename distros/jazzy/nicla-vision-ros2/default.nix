
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, image-transport-plugins, rclpy, ros-gz, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-nicla-vision-ros2";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nicla_vision_ros2-release/archive/release/jazzy/nicla_vision_ros2/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c67ec5d55d086900d3c8ffc63ee7304281d6270c945b9a24c3976a055e900bec";
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
