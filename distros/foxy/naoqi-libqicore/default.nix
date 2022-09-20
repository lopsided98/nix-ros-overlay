
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, naoqi-libqi }:
buildRosPackage {
  pname = "ros-foxy-naoqi-libqicore";
  version = "2.9.7";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/foxy/naoqi_libqicore/2.9.7-0.tar.gz";
    name = "2.9.7-0.tar.gz";
    sha256 = "fd7d2e92011aadf303c933e69875317ad8a70d51795dfebaf03f810d6aba7758";
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
