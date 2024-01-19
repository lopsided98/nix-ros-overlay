
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, controller-interface, geographic-msgs, gtk3, hardware-interface, nmea-msgs, ouxt-lint-common, pkg-config, pluginlib, quaternion-operation, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2 }:
buildRosPackage {
  pname = "ros-humble-nmea-hardware-interface";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_hardware_interface-release/archive/release/humble/nmea_hardware_interface/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "e58f920809c4c3ae2c51be48cb18e71b3f7e03d36e6f95d7452358b979235456";
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
