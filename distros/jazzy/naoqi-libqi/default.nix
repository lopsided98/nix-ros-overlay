
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, openssl }:
buildRosPackage {
  pname = "ros-jazzy-naoqi-libqi";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/jazzy/naoqi_libqi/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "713c4dcc1df1cf443e2f865bad51825bc6c072aed9c9119ae026bf8bb17fc45d";
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
