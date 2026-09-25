
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libx11 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "894f3cc2417633afaa7ecf3df9f4f9e9d45ad65be104550c8e0306542bafac22";
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
