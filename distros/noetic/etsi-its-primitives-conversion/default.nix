
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-primitives-conversion";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_primitives_conversion/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b7578ec196b56ecab10ca87156a98e573dd0c561a6bfd49d75c916d12f98712f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions for converting ROS primitives to and from ASN.1-encoded primitives'';
    license = with lib.licenses; [ mit ];
  };
}
