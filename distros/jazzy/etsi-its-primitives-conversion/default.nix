
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-primitives-conversion";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_primitives_conversion/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "120d26a0883f772f67c081e0c511f0e1c5aa84c026ef29308f0fe427cf6f7e50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS primitives to and from ASN.1-encoded primitives";
    license = with lib.licenses; [ mit ];
  };
}
