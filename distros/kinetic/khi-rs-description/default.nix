
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-description";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_description/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "67217515755eb1c89dac53f8eaa6a122d6641ab5f7f9270b8b9b0cc7f1bfe4e7";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI CAD license (mesh data, see readme)" ];
  };
}
