
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, naoqi-libqi }:
buildRosPackage {
  pname = "ros-humble-naoqi-libqicore";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/humble/naoqi_libqicore/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "702a2a7f38f824d2673d43519474988de25b6f12e4d9aa2c384cc6d1590b8e7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ naoqi-libqi ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aldebaran's libqicore: a layer on top of libqi";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
