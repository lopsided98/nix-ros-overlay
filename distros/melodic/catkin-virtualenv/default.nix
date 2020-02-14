
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-melodic-catkin-virtualenv";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/melodic/catkin_virtualenv/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "a2deb0b6f5fa198765c367ae19f3caf5503a0a4710642adbc7e04e0d5a768f2d";
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
