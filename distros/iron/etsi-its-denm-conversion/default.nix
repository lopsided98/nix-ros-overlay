
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-denm-conversion";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_denm_conversion/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8254ae51c86a35f0958a145c68444dd9a35b64ed252251c59e98d23a5ed8e8a2";
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
