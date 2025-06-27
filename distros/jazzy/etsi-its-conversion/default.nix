
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-denm-ts-conversion, etsi-its-mapem-ts-conversion, etsi-its-mcm-uulm-conversion, etsi-its-spatem-ts-conversion, etsi-its-vam-ts-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-conversion";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_conversion/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "a9454a8dfc0fbf985b0b01af191aaffcf1a5c236fb0e1bd13e9be79334036f45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cam-ts-conversion etsi-its-cpm-ts-conversion etsi-its-denm-conversion etsi-its-denm-ts-conversion etsi-its-mapem-ts-conversion etsi-its-mcm-uulm-conversion etsi-its-spatem-ts-conversion etsi-its-vam-ts-conversion rclcpp rclcpp-components ros-environment std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
