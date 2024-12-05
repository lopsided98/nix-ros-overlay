
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-vam-ts-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-conversion";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_conversion/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "c8c28a9d89c96a016ae2fb9b3eb656a2adf741ed75d2d9363e2de49dc27d1809";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cam-ts-conversion etsi-its-cpm-ts-conversion etsi-its-denm-conversion etsi-its-vam-ts-conversion rclcpp rclcpp-components ros-environment std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
