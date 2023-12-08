
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-conversion, etsi-its-denm-conversion, rclcpp, rclcpp-components, ros-environment, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-conversion";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_conversion/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "75f9817c467e9accb09b41b33d4ebe8be9b941f826eb4d75f4ab952aabaa7f8c";
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
