
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, openssl }:
buildRosPackage {
  pname = "ros-iron-naoqi-libqi";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/iron/naoqi_libqi/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "1a79a5dd3205a293cb4d9d8a6536ec4a044c7f808a3727837ea9ad603f03b2f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
