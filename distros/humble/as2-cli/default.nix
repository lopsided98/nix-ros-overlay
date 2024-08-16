
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1a02d7b4519bdaf24108d69eff62651d4dced9ee1321c920b8a85fefd3efe7a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 CLI Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
