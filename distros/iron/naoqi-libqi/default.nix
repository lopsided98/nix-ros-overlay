
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, gmock, openssl }:
buildRosPackage {
  pname = "ros-iron-naoqi-libqi";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/iron/naoqi_libqi/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "7a0a93f9b172044f25a2900fd9498f0bbfa15304b8121fcdbf01c5241cd02213";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ gmock ];
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
