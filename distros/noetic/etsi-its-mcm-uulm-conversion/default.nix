
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-mcm-uulm-coding, etsi-its-mcm-uulm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-mcm-uulm-conversion";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_mcm_uulm_conversion/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "de24f5f1e571ba7a8b200b74d369c4933a16e9ec2b300e175a4a3a5fc2d4cae7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-mcm-uulm-coding etsi-its-mcm-uulm-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded UULM draft MCMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
