
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-kinetic-catkin-virtualenv";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/kinetic/catkin_virtualenv/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "0c94219f3da044a049f8847ce47e17318537a8ccc1dd82a277dc06f2d7609b64";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3 python3Packages.virtualenv pythonPackages.enum34 pythonPackages.packaging pythonPackages.virtualenv rosbash ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
