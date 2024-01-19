
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-geneus";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/geneus-release/archive/release/noetic/geneus/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "ff5b138e338c71c9be13e2a426b76e274bf9eb28b3a7f9c3e48d1019816b6ba8";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''EusLisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
