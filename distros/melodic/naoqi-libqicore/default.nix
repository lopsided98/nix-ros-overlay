
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-libqi }:
buildRosPackage {
  pname = "ros-melodic-naoqi-libqicore";
  version = "2.9.0-r5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/melodic/naoqi_libqicore/2.9.0-5.tar.gz";
    name = "2.9.0-5.tar.gz";
    sha256 = "f82b0938f694cf2662f2841c9c1f2f8979d42dc596acb19aec4f2a97ffb9069e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ naoqi-libqi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqicore: a layer on top of libqi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
