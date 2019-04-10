
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, git, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-catkin-pip";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/pyros-dev/catkin_pip-release/archive/release/lunar/catkin_pip/0.2.3-0.tar.gz;
    sha256 = "95a6890b0dcb4ba91c776752572e33a3136710005472ebbfa8dc6ed0e1c3c8c3";
  };

  buildInputs = [ python pythonPackages.pip ];
  checkInputs = [ git ];
  propagatedBuildInputs = [ python pythonPackages.pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin macros to allow using pure python packages in usual catkin workspaces with normal python workflow.'';
    #license = lib.licenses.BSD;
  };
}
