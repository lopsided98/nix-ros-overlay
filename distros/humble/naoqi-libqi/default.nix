
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, openssl }:
buildRosPackage {
  pname = "ros-humble-naoqi-libqi";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/humble/naoqi_libqi/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "0d3e8e26b36fa564c0459c630b1ea3c14921fbbfe6304919748fd0f472400a16";
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
