
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, openssl }:
buildRosPackage {
  pname = "ros-galactic-naoqi-libqi";
  version = "2.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/galactic/naoqi_libqi/2.9.7-1.tar.gz";
    name = "2.9.7-1.tar.gz";
    sha256 = "a55991d86906b27c600caa35df0fbd71b66732fa976f27e3c14a6776383271c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
