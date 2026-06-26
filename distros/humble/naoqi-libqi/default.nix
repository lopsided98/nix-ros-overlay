
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, openssl }:
buildRosPackage {
  pname = "ros-humble-naoqi-libqi";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/humble/naoqi_libqi/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "ae98ca8d97c6c228612838ca4248453264d425c8576b23b007313a9b26cd1315";
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
