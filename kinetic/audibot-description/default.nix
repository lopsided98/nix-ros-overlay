
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-audibot-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "a518e37cb46b3929eab8f3ebd93ad88cea7c77cd19d741728665c230f980bf97";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
