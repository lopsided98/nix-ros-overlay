
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin-pip";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/catkin_pip-release/archive/release/melodic/catkin_pip/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "195b4747147d7d36eea1f1c5398e532289984d6d690dd58e04acf556462deda4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ git ];
  propagatedBuildInputs = [ python pythonPackages.pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin macros to allow using pure python packages in usual catkin workspaces with normal python workflow.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
