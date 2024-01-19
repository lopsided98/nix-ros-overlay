
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-primitives-conversion";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_primitives_conversion/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f993d9d279f92246c43f5bf4e040aed8122c98e58e424cf6ecbb5eb925bed954";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversion functions for converting ROS primitives to and from ASN.1-encoded primitives'';
    license = with lib.licenses; [ mit ];
  };
}
