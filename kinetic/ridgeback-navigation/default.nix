
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, map-server, catkin, gmapping, move-base, amcl, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-navigation";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/ridgeback_navigation/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "2f8b096bdb890d3ebe3b4dc31039075bd226a65530ba3f0b83c49192ddf8dbf3";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf map-server gmapping move-base amcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
