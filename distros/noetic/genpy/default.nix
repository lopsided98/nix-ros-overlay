
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "a32c58646815ef69c971f8370d80a03f925e5fa85fbdc607ab262f5ecc41d2f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg python3Packages.pyyaml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
