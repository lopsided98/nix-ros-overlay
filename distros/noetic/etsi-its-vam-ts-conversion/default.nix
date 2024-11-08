
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-primitives-conversion, etsi-its-vam-ts-coding, etsi-its-vam-ts-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-vam-ts-conversion";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_vam_ts_conversion/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "a75fb206bc90c0cbf00a2444dcaba126c2957f49281d35b671dc1d05b46aa965";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-vam-ts-coding etsi-its-vam-ts-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS VAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
