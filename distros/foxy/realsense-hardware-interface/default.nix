
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, controller-interface, cv-bridge, diagnostic-msgs, gtk3, hardware-interface, image-transport, librealsense2, libusb1, nav-msgs, openssl, ouxt-lint-common, pkg-config, pluginlib, poco, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense-hardware-interface";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/realsense_hardware_interface-release/archive/release/foxy/realsense_hardware_interface/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "0d46b3c3c50593eb21c18e552069bf067aa944d3354f783e3dd034940e5d8a21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ controller-interface cv-bridge diagnostic-msgs gtk3 hardware-interface image-transport librealsense2 libusb1 nav-msgs openssl pkg-config pluginlib poco rclcpp rclcpp-components realtime-tools ros2-control rviz2 sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 hardware interface for realsense camera'';
    license = with lib.licenses; [ "apache-2.0" ];
  };
}
