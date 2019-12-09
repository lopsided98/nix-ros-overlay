
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, geometry-msgs, controller-manager-msgs, std-msgs, catkin, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jointstick";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jointstick-release/archive/release/kinetic/jointstick/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "64c04c7f31afbd01cbcf0b5ce45e3c717bc0de228aba0b3cbd87dde24df0cb38";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs controller-manager-msgs std-msgs nav-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs controller-manager-msgs std-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move any joint with any controller!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
