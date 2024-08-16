
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cpm-ts-coding, etsi-its-cpm-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-cpm-ts-conversion";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_cpm_ts_conversion/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c2b87627767429e1afa4d4a41307fb23782499e0805c46ba682e1b3a00a14d6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cpm-ts-coding etsi-its-cpm-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CPMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
