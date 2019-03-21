
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-traits, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp-serialization";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_serialization/0.6.12-0.tar.gz;
    sha256 = "ba4ea435dc1d1680f6242b142f06376785ca3abeed71862c23bd6dd0220833e5";
  };

  propagatedBuildInputs = [ roscpp-traits rostime cpp-common ];
  nativeBuildInputs = [ roscpp-traits rostime cpp-common catkin ];

  meta = {
    description = ''roscpp_serialization contains the code for serialization as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesSerializationAndAdaptingTypes">MessagesSerializationAndAdaptingTypes</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    #license = lib.licenses.BSD;
  };
}
