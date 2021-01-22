
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-libqi";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/kinetic/naoqi_libqi/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "6f66801ecd8acb3f681d7954458c683df2afa06e624e4c7ee923d143552e2d3c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
