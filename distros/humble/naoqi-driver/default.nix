
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, rclcpp, rclcpp-action, robot-state-publisher, rosidl-default-generators, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-naoqi-driver";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver2-release/archive/release/humble/naoqi_driver/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "9b9913f1bb13cab7be5b57fda261cdba88dfb5f3bfb556ac9d1cc098351f28f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake diagnostic-msgs diagnostic-updater geometry-msgs rosidl-default-generators sensor-msgs tf2-geometry-msgs tf2-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ament-index-cpp boost cv-bridge image-transport kdl-parser naoqi-bridge-msgs naoqi-libqi naoqi-libqicore rclcpp rclcpp-action robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Driver module between Aldebaran's NAOqiOS and ROS2. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
