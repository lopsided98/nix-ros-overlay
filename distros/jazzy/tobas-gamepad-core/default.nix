
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libevdev, magic-enum, pkg-config, tobas-constants, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-core";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_core/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "9e8e195aeefc0c0857c78398e51a61361e5b0c17c46122b47cc530a6334d32d9";
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
