
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dingo-navigation";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_navigation/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "74524222298f52e02fde55f90690f132a5fb5662193c0a97205d949dc1d326b9";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
