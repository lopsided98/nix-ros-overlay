
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmypy";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/rospypi/genmypy-release/archive/release/noetic/genmypy/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ae09ff42320b20a8f7364c198808c9991bf81508ab0085b9af99121b24c9c72b";
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
