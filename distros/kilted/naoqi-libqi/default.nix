
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, openssl }:
buildRosPackage {
  pname = "ros-kilted-naoqi-libqi";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/kilted/naoqi_libqi/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "fa7ea785c0ba251c3add192ea1f7b9ebd254d9e654d32b9fe13fe75badbc3c1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aldebaran's libqi: a core library for NAOqiOS development";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
