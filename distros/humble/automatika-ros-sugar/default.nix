
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, builtin-interfaces, geometry-msgs, launch, launch-testing, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-automatika-ros-sugar";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_ros_sugar-release/archive/release/humble/automatika_ros_sugar/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ee44dd3b27492e1875a86fbfccdcda2c3882e5f18fe5b29d1ff2e474da3903e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto launch launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs python3Packages.attrs python3Packages.jinja2 python3Packages.msgpack python3Packages.msgpack-numpy python3Packages.numpy python3Packages.opencv4 python3Packages.pyyaml python3Packages.setproctitle python3Packages.toml rclcpp rclpy rosidl-default-runtime sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Syntactic sugar for ROS2 nodes creation and management";
    license = with lib.licenses; [ mit ];
  };
}
