
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl }:
buildRosPackage {
  pname = "ros-melodic-naoqi-libqi";
  version = "2.9.0-r7";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/melodic/naoqi_libqi/2.9.0-7.tar.gz";
    name = "2.9.0-7.tar.gz";
    sha256 = "fc2fbbd8fbc3da8ea4dbda3b988cbce5c08d031fb808c0965d4f126b70ad7d7d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost openssl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
