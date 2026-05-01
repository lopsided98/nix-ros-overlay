
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, builtin-interfaces, geometry-msgs, launch, launch-testing, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-automatika-ros-sugar";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_ros_sugar-release/archive/release/lyrical/automatika_ros_sugar/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "f86c2fdd40679968590c0d6b3d98fe2bece8e5032b67f102fdd7fa24505e6e81";
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
