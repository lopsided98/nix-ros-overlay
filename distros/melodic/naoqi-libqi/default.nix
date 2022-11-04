
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl }:
buildRosPackage {
  pname = "ros-melodic-naoqi-libqi";
  version = "2.9.0-r8";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqi-release/archive/release/melodic/naoqi_libqi/2.9.0-8.tar.gz";
    name = "2.9.0-8.tar.gz";
    sha256 = "cdf737deff9e6e4887b3aff0c777c1fef8e9ff28c85d9b62a18c91771f8c7c07";
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
