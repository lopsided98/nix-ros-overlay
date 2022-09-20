
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, naoqi-libqi }:
buildRosPackage {
  pname = "ros-galactic-naoqi-libqicore";
  version = "2.9.7";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/galactic/naoqi_libqicore/2.9.7-0.tar.gz";
    name = "2.9.7-0.tar.gz";
    sha256 = "a91323a2682380407f87feb4de52b55078cd775639f1f4ceef38637052b55b92";
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
