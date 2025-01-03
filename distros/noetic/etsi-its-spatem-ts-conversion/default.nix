
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-primitives-conversion, etsi-its-spatem-ts-coding, etsi-its-spatem-ts-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-spatem-ts-conversion";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_spatem_ts_conversion/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "a15a9aba7f9689b838d4194f324c4f1071e1c6eaa219ce0410f91258c491ead7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-spatem-ts-coding etsi-its-spatem-ts-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS SPATEMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
