
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-conversion-srvs, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-denm-ts-conversion, etsi-its-mapem-ts-conversion, etsi-its-mcm-uulm-conversion, etsi-its-spatem-ts-conversion, etsi-its-vam-ts-conversion, rclcpp, rclcpp-components, ros-environment, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-conversion";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_conversion/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "b7b3c10cc9fb9fcff2dbd055332e6793701b9dbc25cc02c5edb12d5ca79e77ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cam-ts-conversion etsi-its-conversion-srvs etsi-its-cpm-ts-conversion etsi-its-denm-conversion etsi-its-denm-ts-conversion etsi-its-mapem-ts-conversion etsi-its-mcm-uulm-conversion etsi-its-spatem-ts-conversion etsi-its-vam-ts-conversion rclcpp rclcpp-components ros-environment udp-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
