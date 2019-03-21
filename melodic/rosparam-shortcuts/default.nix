
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, catkin, eigen, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosparam-shortcuts";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/rosparam_shortcuts-release/archive/release/melodic/rosparam_shortcuts/0.2.1-0.tar.gz;
    sha256 = "179fe82f1e7b18f2ca81cf26d7ffce77d1533987e5c27a3325563a31d7218504";
  };

  propagatedBuildInputs = [ roscpp eigen ];
  nativeBuildInputs = [ catkin cmake-modules roslint eigen eigen-conversions roscpp ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    #license = lib.licenses.BSD;
  };
}
