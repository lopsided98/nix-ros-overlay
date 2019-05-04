
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodePackages, git, gtk2, catkin, alsaLib, nodejs, xorg, nss }:
buildRosPackage {
  pname = "ros-kinetic-ros-peerjs";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/easymov/ros_peerjs-release/archive/release/kinetic/ros_peerjs/0.1.8-0.tar.gz;
    sha256 = "a6c846552618e2a8d7a7f2ceb524d29ab9fbf1749bac9fead0b37b8cf3287f00";
  };

  buildInputs = [ nodePackages.npm git ];
  propagatedBuildInputs = [ gtk2 alsaLib nodejs xorg.libXScrnSaver xorg.xorgserver nss ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Peerjs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
