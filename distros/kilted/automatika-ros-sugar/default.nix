
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, builtin-interfaces, geometry-msgs, launch, launch-testing, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-automatika-ros-sugar";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_ros_sugar-release/archive/release/kilted/automatika_ros_sugar/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "536d38781f4cc6742a7e68312ab6f59630462e3dcd228882b1efed1ff20fb33f";
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
