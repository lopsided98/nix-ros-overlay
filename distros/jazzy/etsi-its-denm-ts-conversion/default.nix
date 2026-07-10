
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-denm-ts-coding, etsi-its-denm-ts-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-denm-ts-conversion";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_denm_ts_conversion/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "a773f9d613161a7fc7c3c2d14b36d5b8b410653db85f773357671f2d77e6a0b6";
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
