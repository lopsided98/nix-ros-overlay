
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-denm-ts-conversion, etsi-its-mapem-ts-conversion, etsi-its-spatem-ts-conversion, etsi-its-vam-ts-conversion, message-runtime, nodelet, ros-environment, roscpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "206495629a75f714b7484a557bb6e22ab0e8b59adde36e3b4b3f4d9f81d081f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cam-ts-conversion etsi-its-cpm-ts-conversion etsi-its-denm-conversion etsi-its-denm-ts-conversion etsi-its-mapem-ts-conversion etsi-its-spatem-ts-conversion etsi-its-vam-ts-conversion message-runtime nodelet ros-environment roscpp std-msgs udp-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
