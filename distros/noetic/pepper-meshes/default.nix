
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-noetic-pepper-meshes";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes-release/archive/release/noetic/pepper_meshes/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "08a86a6b1f3ef1378c9a02ac74fe74013cd897b1288cabc4dbfd914974290b6c";
  };

  buildType = "catkin";
  buildInputs = [ catkin openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics Pepper'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
