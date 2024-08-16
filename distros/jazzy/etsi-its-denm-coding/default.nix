
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-denm-coding";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_denm_coding/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "9acd5802c6f53b6eb4872a1eb04ba3c801093333c1707cbb68a2f722f3ee960f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS DENMs generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
