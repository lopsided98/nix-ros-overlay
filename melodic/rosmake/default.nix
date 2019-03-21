
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosmake";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/rosmake/1.14.6-0.tar.gz;
    sha256 = "2014461723eb619c99a70d3314a6e392e922a27d17fc9bc5a83292c8dfd0d591";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    #license = lib.licenses.BSD;
  };
}
