
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-py-trees";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees-release/archive/release/melodic/py_trees/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "55341ff9dcd20854b5b6625cef13b5b4bc891c2ac046b0514bb592c473f0c00a";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.pydot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
