
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp-serialization";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_serialization/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "3e66fa241b33a6ee8745695bbcc1e159dbcfbd6be7c0dad64d5d503ae286cd0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cpp-common roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_serialization contains the code for serialization as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesSerializationAndAdaptingTypes">MessagesSerializationAndAdaptingTypes</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
