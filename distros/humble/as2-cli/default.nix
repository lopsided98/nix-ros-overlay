
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d2e4da869ada468c0e22addaa0e95cd9d2247b358c0c622671751219e5310b5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 CLI Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
