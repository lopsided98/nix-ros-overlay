
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-denm-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-conversion";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_conversion/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "df82966ca39886626605261e620666819ae3645555601e13699fa8a418956f52";
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
