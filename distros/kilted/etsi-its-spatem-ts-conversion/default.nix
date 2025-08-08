
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-primitives-conversion, etsi-its-spatem-ts-coding, etsi-its-spatem-ts-msgs }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-spatem-ts-conversion";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_spatem_ts_conversion/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "eeddec92072738467ae86e225db1939dec7e640b54126d98b584bf1bd1af5f18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-spatem-ts-coding etsi-its-spatem-ts-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS SPATEMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
