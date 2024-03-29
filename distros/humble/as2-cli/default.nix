
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "7b38088d612d188280ce6a250351888f06a6a2755de2c9be27b173ece7a0be1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 CLI Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
