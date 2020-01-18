
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-melodic-catkin-virtualenv";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/melodic/catkin_virtualenv/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "af870d6acef78e77b5703742a94ac73334e81a0ef916b5a41d2e0c9fba263d7c";
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
