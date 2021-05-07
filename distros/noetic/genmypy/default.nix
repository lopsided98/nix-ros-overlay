
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmypy";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rospypi/genmypy-release/archive/release/noetic/genmypy/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "888f8ec42b8f6664e3b75acaa8493f213e6c7fea16f6b80a095ea48a6d879de5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg genpy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python stub generator from genmsg specs'';
    license = with lib.licenses; [ asl20 ];
  };
}
