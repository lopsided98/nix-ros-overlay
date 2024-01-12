
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, rclcpp, rclcpp-action, robot-state-publisher, rosidl-default-generators, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-naoqi-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver2-release/archive/release/humble/naoqi_driver/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "5cef270b3dab4c86abdf8c77f8d4c28fdf1eed89fb1f07926d65b53aa2252421";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake diagnostic-msgs diagnostic-updater geometry-msgs rosidl-default-generators sensor-msgs tf2-geometry-msgs tf2-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs boost cv-bridge image-transport kdl-parser naoqi-bridge-msgs naoqi-libqi naoqi-libqicore rclcpp rclcpp-action robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS2. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
