
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-primitives-conversion";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_primitives_conversion/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "1c89fb86fa530cc7a2894464bca3b6f6425501a48f68406b22a37a1a8d857336";
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
