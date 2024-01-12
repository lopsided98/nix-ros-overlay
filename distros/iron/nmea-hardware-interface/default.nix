
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, controller-interface, geographic-msgs, gtk3, hardware-interface, nmea-msgs, ouxt-lint-common, pkg-config, pluginlib, quaternion-operation, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2 }:
buildRosPackage {
  pname = "ros-iron-nmea-hardware-interface";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_hardware_interface-release/archive/release/iron/nmea_hardware_interface/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "de78a01a08bdcf8bf437639557a175bd71ec17d89fe6d4f4d70673ef088bd79c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ boost controller-interface geographic-msgs gtk3 hardware-interface nmea-msgs pkg-config pluginlib quaternion-operation rclcpp rclcpp-components realtime-tools ros2-control rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 hardware interface for nmea_gps'';
    license = with lib.licenses; [ "apache-2.0" ];
  };
}
