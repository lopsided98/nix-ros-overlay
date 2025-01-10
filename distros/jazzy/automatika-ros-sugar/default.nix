
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-automatika-ros-sugar";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_ros_sugar-release/archive/release/jazzy/automatika_ros_sugar/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "7c4777d543c982a06d1e20ae0acc554966d0a142d33a760fd958fee86c4a703b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs python3Packages.jinja2 python3Packages.msgpack python3Packages.numpy python3Packages.opencv4 rclcpp rclpy rosidl-default-runtime sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Syntactic sugar for ROS2 nodes creation and management";
    license = with lib.licenses; [ mit ];
  };
}
