
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, builtin-interfaces, geometry-msgs, launch, launch-testing, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-automatika-ros-sugar";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_ros_sugar-release/archive/release/humble/automatika_ros_sugar/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "7fd68c41c23b3a61b2f60c3ff7057b230920c10b3284be2236a040b02abce927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto launch launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs python3Packages.jinja2 python3Packages.msgpack python3Packages.numpy python3Packages.opencv4 rclcpp rclpy rosidl-default-runtime sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Syntactic sugar for ROS2 nodes creation and management";
    license = with lib.licenses; [ mit ];
  };
}
