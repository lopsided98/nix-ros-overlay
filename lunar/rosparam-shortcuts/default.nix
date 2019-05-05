
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, catkin, eigen, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosparam-shortcuts";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/davetcoleman/rosparam_shortcuts-release/archive/release/lunar/rosparam_shortcuts/0.2.1-0.tar.gz;
    sha256 = "9b66633dac39ecb2cf90ed53d3872170ef45e8f51c96591f8f4d5ff2338f601c";
  };

  buildInputs = [ cmake-modules roslint eigen eigen-conversions roscpp ];
  propagatedBuildInputs = [ roscpp eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
