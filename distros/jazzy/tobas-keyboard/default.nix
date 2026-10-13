
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libx11 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "ecf0e99d29b876734f827e11f39b683db8431e219e86bbc4b43459c055c772c8";
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
