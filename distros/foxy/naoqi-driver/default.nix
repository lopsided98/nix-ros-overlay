
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, orocos-kdl, rclcpp, robot-state-publisher, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-naoqi-driver";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver2-release/archive/release/foxy/naoqi_driver/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "b4c3f77f1266343aee694328f741ccb925cc60d74172a831f18d99fd15951421";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake diagnostic-msgs diagnostic-updater geometry-msgs sensor-msgs tf2-geometry-msgs tf2-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost cv-bridge image-transport kdl-parser naoqi-bridge-msgs naoqi-libqi naoqi-libqicore orocos-kdl rclcpp robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS2. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
