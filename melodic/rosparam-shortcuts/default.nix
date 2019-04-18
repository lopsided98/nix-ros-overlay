
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, catkin, eigen, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosparam-shortcuts";
  version = "0.3.1-r1";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/rosparam_shortcuts-release/archive/release/melodic/rosparam_shortcuts/0.3.1-1.tar.gz;
    sha256 = "98ae1e0dfc847978257e1ec58b7c183ac4304dc620ac460356d33473adba7042";
  };

  buildInputs = [ cmake-modules roslint eigen eigen-conversions roscpp ];
  propagatedBuildInputs = [ roscpp eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    #license = lib.licenses.BSD;
  };
}
