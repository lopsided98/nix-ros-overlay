
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-noetic-swri-console-util";
  version = "2.13.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_console_util/2.13.5-1.tar.gz";
    name = "2.13.5-1.tar.gz";
    sha256 = "c56e7d5948db8c381633b9bf0e56f3369fc1f5ea7edc37da9bffae6e0e8bb2d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
