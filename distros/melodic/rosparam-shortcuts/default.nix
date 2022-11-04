
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eigen-conversions, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-rosparam-shortcuts";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rosparam_shortcuts-release/archive/release/melodic/rosparam_shortcuts/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "e98b3641823b5ebc202bf41a8c62202f8c26fd7d898c9c9a32fb1812771b9554";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen roslint ];
  propagatedBuildInputs = [ eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
