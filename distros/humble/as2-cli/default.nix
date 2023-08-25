
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "932595c3f947c4b0126787f0c19fb112cbd4275824ce1f0c527957a1a592553e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 CLI Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
