
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, catkin, eigen, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosparam-shortcuts";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/davetcoleman/rosparam_shortcuts-release/archive/release/kinetic/rosparam_shortcuts/0.2.1-0.tar.gz;
    sha256 = "44eb8f5cd6b32e784a2360cdd96e74d1453608661eb083f3275ed4e42390dd92";
  };

  propagatedBuildInputs = [ roscpp eigen ];
  nativeBuildInputs = [ catkin cmake-modules roslint eigen eigen-conversions roscpp ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    #license = lib.licenses.BSD;
  };
}
