
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosbash";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosbash/1.14.4-0.tar.gz;
    sha256 = "b7338397eaf46e3541d533604e4fbe7b6f437ec046df0b4d565e5d3162ce9617";
  };

  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    #license = lib.licenses.BSD;
  };
}
