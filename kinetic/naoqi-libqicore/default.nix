
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, naoqi-libqi, catkin }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-libqicore";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/libqicore-release/archive/release/kinetic/naoqi_libqicore/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "593042e1837931f5a094e7b782cfd27ef9b9c0527738015153f188b246d58206";
  };

  buildType = "catkin";
  buildInputs = [ naoqi-libqi ];
  propagatedBuildInputs = [ naoqi-libqi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqicore: a layer on top of libqi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
