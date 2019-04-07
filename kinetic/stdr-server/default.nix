
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, libyamlcpp, tf, catkin, rostest, nav-msgs, nodelet, actionlib, stdr-msgs, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-stdr-server";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_server/0.3.2-0.tar.gz;
    sha256 = "4ea189d59daad28cb6a5b5ab61286e28d56898a9110b53e741c0c15be128c07c";
  };

  buildInputs = [ map-server libyamlcpp tf roscpp nav-msgs nodelet actionlib stdr-msgs visualization-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ map-server libyamlcpp tf roscpp nav-msgs nodelet actionlib stdr-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implements synchronization and coordination functionalities of STDR Simulator.'';
    #license = lib.licenses.GPLv3;
  };
}
