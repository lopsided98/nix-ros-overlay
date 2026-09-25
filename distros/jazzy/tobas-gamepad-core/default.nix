
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libevdev, magic-enum, pkg-config, tobas-constants, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-core";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_core/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ad893093db9ab3d81c1243c6b278ae07b068e30f8dbf3524e53e07fbcefcffd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libevdev magic-enum tobas-constants tobas-math ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "tobas gamepad input package";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
