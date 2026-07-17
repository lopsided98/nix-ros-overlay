
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, etsi-its-cam-msgs, etsi-its-cam-ts-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-denm-ts-msgs, etsi-its-ivim-ts-msgs, etsi-its-mapem-ts-msgs, etsi-its-mcm-uulm-msgs, etsi-its-spatem-ts-msgs, etsi-its-vam-ts-msgs, rosidl-default-generators, rosidl-default-runtime, udp-msgs }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-conversion-srvs";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_conversion_srvs/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "3a51478a36ee52e8009e77a76903fc1e4f8e5c5663357ec1b140a6f01d88566b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cam-ts-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-denm-ts-msgs etsi-its-ivim-ts-msgs etsi-its-mapem-ts-msgs etsi-its-mcm-uulm-msgs etsi-its-spatem-ts-msgs etsi-its-vam-ts-msgs rosidl-default-runtime udp-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "Services to convert ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
