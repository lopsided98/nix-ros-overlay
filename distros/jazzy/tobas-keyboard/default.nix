
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libx11 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "11a9bcf9684cd7f3cbc7f0736d66293ad6893899696a80dcf3299111e86110bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libx11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Terminal keyboard input library for nonblocking key handling.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
