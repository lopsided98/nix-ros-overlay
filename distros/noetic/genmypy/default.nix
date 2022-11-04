
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmypy";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rospypi/genmypy-release/archive/release/noetic/genmypy/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "65630a5fe0762662abedd95c8193d9a0141e61511149f780b3d9bbfd69ef3aed";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg genpy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python stub generator from genmsg specs'';
    license = with lib.licenses; [ asl20 ];
  };
}
