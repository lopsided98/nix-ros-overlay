
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-kinetic-catkin-virtualenv";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/kinetic/catkin_virtualenv/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "f94de708a4043f700868e47b864bb7d3b28be9d72989a71bd68e7d6fb7786d93";
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
