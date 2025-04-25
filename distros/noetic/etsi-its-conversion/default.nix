
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-conversion, etsi-its-cam-ts-conversion, etsi-its-cpm-ts-conversion, etsi-its-denm-conversion, etsi-its-denm-ts-conversion, etsi-its-mapem-ts-conversion, etsi-its-mcm-uulm-conversion, etsi-its-spatem-ts-conversion, etsi-its-vam-ts-conversion, message-runtime, nodelet, ros-environment, roscpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-conversion";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_conversion/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "1d699fa7b9048bdc6243f30d0914bf38c4f0c3aa5472f47cb8fc988ff87e0dbb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-cam-ts-conversion etsi-its-cpm-ts-conversion etsi-its-denm-conversion etsi-its-denm-ts-conversion etsi-its-mapem-ts-conversion etsi-its-mcm-uulm-conversion etsi-its-spatem-ts-conversion etsi-its-vam-ts-conversion message-runtime nodelet ros-environment roscpp std-msgs udp-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
