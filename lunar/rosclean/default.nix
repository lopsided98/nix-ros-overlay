
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-rosclean";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosclean/1.14.4-0.tar.gz;
    sha256 = "42056b574cf6f21ab4d3c6c5ca9de73001f738e08d5cc21230412f5ad8f98780";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    #license = lib.licenses.BSD;
  };
}
