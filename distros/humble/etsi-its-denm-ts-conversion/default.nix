
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-denm-ts-coding, etsi-its-denm-ts-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-ts-conversion";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_denm_ts_conversion/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "eed986cff80fed16f5211d7da7730c51244d41ee80c15da673a184f0aa70dfc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-denm-ts-coding etsi-its-denm-ts-msgs etsi-its-primitives-conversion ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS DENMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
