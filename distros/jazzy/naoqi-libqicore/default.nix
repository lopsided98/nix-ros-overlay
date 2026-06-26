
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, naoqi-libqi }:
buildRosPackage {
  pname = "ros-jazzy-naoqi-libqicore";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/jazzy/naoqi_libqicore/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "fee0aea4678f77289cb14134b35b0fda409a942889c3c54f6b28cbf243a22642";
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
