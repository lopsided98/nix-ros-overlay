
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libx11 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "7441582b73867089e3306f98888148aa29ae1d829366671d3e110db2e3232c4c";
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
