
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, controller-interface, cv-bridge, diagnostic-msgs, gtk3, hardware-interface, image-transport, librealsense2, libusb1, nav-msgs, openssl, ouxt-lint-common, pkg-config, pluginlib, poco, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense-hardware-interface";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OUXT-Polaris";
        repo = "realsense_hardware_interface-release";
        rev = "release/foxy/realsense_hardware_interface/0.0.2-1";
        sha256 = "sha256-DLvDRyaHLGlF/T6Y4g8Wda2zVZGiUzwqOHmLQ9IdPMo=";
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
