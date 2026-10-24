
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libevdev, magic-enum, pkg-config, tobas-constants, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-core";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_core/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "a1c2171be8fc96b710711d91b1c4e3905b4da20c01400413f3835f1dbbea5442";
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
