
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmypy";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rospypi/genmypy-release/archive/release/melodic/genmypy/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "6a55a01f75fa0cb6ec6fb8eb55d3a89067016bb38f9c0a10c31427c97360573e";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ genmsg genpy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python stub generator from genmsg specs'';
    license = with lib.licenses; [ asl20 ];
  };
}
