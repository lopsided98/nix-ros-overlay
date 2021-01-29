
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-description";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_description/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "297c05a6cfc1a11833e80668ae4bc7a9c99069032717d02b8d8d1caa0e6bac5b";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI CAD license (mesh data, see readme)" ];
  };
}
