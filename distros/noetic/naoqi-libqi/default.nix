
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl }:
buildRosPackage {
  pname = "ros-noetic-naoqi-libqi";
  version = "2.9.7";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/noetic/naoqi_libqi/2.9.7-0.tar.gz";
    name = "2.9.7-0.tar.gz";
    sha256 = "76aecfaceb5619dfbd57fdfdd477746ab1ed3c925cc61ffaac927cb5c65a8331";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
