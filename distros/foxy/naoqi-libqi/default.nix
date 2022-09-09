
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, openssl }:
buildRosPackage {
  pname = "ros-foxy-naoqi-libqi";
  version = "2.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/foxy/naoqi_libqi/2.9.7-1.tar.gz";
    name = "2.9.7-1.tar.gz";
    sha256 = "47b7a2e6e0f67411140971721be83dbf3a1b8e10c6b4fb51dd75aba54d3c742a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
