
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-description";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_description/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "b20c4b2926a4cb48190f097bab1a22f8bc661722f0aa3a02e83173871e0ac490";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI CAD license (mesh data, see readme)" ];
  };
}
