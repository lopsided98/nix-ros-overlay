
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-conversion";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_denm_conversion/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "d7e4e8aa114de99957ddcbe6738b66bed0a6a736a2a445c695707f9bd56d49a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-denm-coding etsi-its-denm-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS DENMs'';
    license = with lib.licenses; [ mit ];
  };
}
