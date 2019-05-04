
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-description";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_description/1.1.1-1.tar.gz;
    sha256 = "8281909ca3016832385b20c00b12722c48645a7411f697c6de9c04e9807bd3c6";
  };

  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
