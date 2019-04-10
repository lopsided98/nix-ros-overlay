
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-genpy";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/genpy-release/archive/release/lunar/genpy/0.6.7-0.tar.gz;
    sha256 = "66779fdc019ccb931dc620dbc6b1eaaaac1c8b7251826dbe06441eb6d5536b26";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS message and service generators.'';
    #license = lib.licenses.BSD;
  };
}
