
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-primitives-conversion, etsi-its-vam-ts-coding, etsi-its-vam-ts-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-vam-ts-conversion";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_vam_ts_conversion/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "058ad5edb622a2e73fed70a6197e78040b1136f8c907408b86a14be88199dd08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-vam-ts-coding etsi-its-vam-ts-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS VAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
