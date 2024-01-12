
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-noetic-catkin-virtualenv";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/noetic/catkin_virtualenv/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "a64e2bee1b82cb22c0ff35aea995ade6e9ab4b4f65a56bea61e928bd27acc608";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3 python3Packages.nose python3Packages.rospkg python3Packages.virtualenv pythonPackages.python rosbash ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
