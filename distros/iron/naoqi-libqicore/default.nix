
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, naoqi-libqi }:
buildRosPackage {
  pname = "ros-iron-naoqi-libqicore";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/iron/naoqi_libqicore/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "efe5c91cd25a2a6366bacae178ce52a7a51d84a916b4a1c13c7ddfd8ed3e47cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ naoqi-libqi ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aldebaran's libqicore: a layer on top of libqi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
