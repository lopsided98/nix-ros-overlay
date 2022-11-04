
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, openssl }:
buildRosPackage {
  pname = "ros-foxy-naoqi-libqi";
  version = "2.9.7-r2";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/foxy/naoqi_libqi/2.9.7-2.tar.gz";
    name = "2.9.7-2.tar.gz";
    sha256 = "cd053401f821e95692d9aeccfeeb3718018b9758638402f9666a488f7b986383";
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
