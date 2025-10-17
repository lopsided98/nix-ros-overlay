
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, etsi-its-cam-msgs, etsi-its-cam-ts-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-denm-ts-msgs, etsi-its-mapem-ts-msgs, etsi-its-mcm-uulm-msgs, etsi-its-spatem-ts-msgs, etsi-its-vam-ts-msgs, rosidl-default-generators, rosidl-default-runtime, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-conversion-srvs";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_conversion_srvs/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "fb0bb95725b0c78e028f9f854c2e426508b3ff0a0a3c4fdb6ad0d90e2ea6fa92";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cam-ts-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-denm-ts-msgs etsi-its-mapem-ts-msgs etsi-its-mcm-uulm-msgs etsi-its-spatem-ts-msgs etsi-its-vam-ts-msgs rosidl-default-runtime udp-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "Services to convert ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
