
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_description/1.1.0-1.tar.gz;
    sha256 = "b12125af7782a521e5007e521d3e8dfd4d4de64bd264ea56fca444f0b6b0c6a3";
  };

  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    #license = lib.licenses.BSD;
  };
}
