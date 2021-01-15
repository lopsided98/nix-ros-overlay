
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-kinetic-pepper-meshes";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes-release/archive/release/kinetic/pepper_meshes/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "b40a479b44fc98255510157b5cb90acc9b6f572ecc51ecee9ad1975fbd11ca1f";
  };

  buildType = "catkin";
  buildInputs = [ openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics Pepper'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
