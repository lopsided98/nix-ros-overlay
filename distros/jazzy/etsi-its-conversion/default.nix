
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-denm-ts-conversion, etsi-its-mapem-ts-conversion, etsi-its-mcm-uulm-conversion, etsi-its-spatem-ts-conversion, etsi-its-vam-ts-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-conversion";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_conversion/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "dc7520dabbe8f2e2667498d768d75d94fa6d07b2614371f4f269c169492eb707";
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
