
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-catkin-pip";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/pyros-dev/catkin_pip-release/archive/release/kinetic/catkin_pip/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "ed04c92382ede02d8098c828a7bd474d1ce96c3a4f78edb61966e7a9850033be";
  };

  buildType = "catkin";
  checkInputs = [ git ];
  propagatedBuildInputs = [ python pythonPackages.pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin macros to allow using pure python packages in usual catkin workspaces with normal python workflow.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
