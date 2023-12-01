
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-primitives-conversion";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_primitives_conversion/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "858b318ba7d9b390aeb54a931524064281adc0677c2f273d9812882e523db7e3";
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
