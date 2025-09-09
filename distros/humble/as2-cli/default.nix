
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "c5adb477d1a6c9546a7c0e70fb2cb3a0977496f1278e62125fd4f764b14d0f00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 CLI Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
