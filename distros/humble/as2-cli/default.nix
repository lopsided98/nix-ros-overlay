
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "9a8d2f7fa92db2e891d21fa1f3a49e174242c54990a13206cece497a021c5549";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 CLI Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
