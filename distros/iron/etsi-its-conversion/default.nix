
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-iron-etsi-its-conversion";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_conversion/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5aecf247b3630c794682b16cf5c6048b71c777fe11543fd1a3403364fe9c86ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cpm-ts-conversion etsi-its-denm-conversion rclcpp rclcpp-components ros-environment std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
