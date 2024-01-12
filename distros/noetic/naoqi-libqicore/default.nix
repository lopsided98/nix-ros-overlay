
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-libqi }:
buildRosPackage {
  pname = "ros-noetic-naoqi-libqicore";
  version = "2.9.7";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/noetic/naoqi_libqicore/2.9.7-0.tar.gz";
    name = "2.9.7-0.tar.gz";
    sha256 = "a8a1c074dd1e4070379a53a714279e41f84986271ad970fead609d186a6d165c";
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
