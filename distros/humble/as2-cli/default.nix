
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "278d842c1d536063e670f73a79f7e59b1a2627b162c66cfef9f8df3cd884f939";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 CLI Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
