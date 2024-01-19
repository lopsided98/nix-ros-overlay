
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-denm-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-iron-etsi-its-conversion";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_conversion/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4a6a241501b735fa15492f54c1ef47f2c0eb0a4aeb414093d9d7ede9cf41f406";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-denm-conversion rclcpp rclcpp-components ros-environment std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Converts ROS messages to and from ASN.1-encoded ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
