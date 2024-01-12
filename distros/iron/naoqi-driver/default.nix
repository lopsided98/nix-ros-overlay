
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, rclcpp, rclcpp-action, robot-state-publisher, rosidl-default-generators, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-naoqi-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver2-release/archive/release/iron/naoqi_driver/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "0a43055a6c3d1337045e191452ae9a5cd469d4f5b8a6792a132bed3f84d2857c";
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
