
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, roscpp-traits, rostime, catkin }:
buildRosPackage {
  pname = "ros-melodic-roscpp-serialization";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_serialization/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "4450780fd6d678d7df503b13751fa15edf9287c6b860db822f43f4530b27773f";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common roscpp-traits rostime ];
  propagatedBuildInputs = [ cpp-common roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_serialization contains the code for serialization as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesSerializationAndAdaptingTypes">MessagesSerializationAndAdaptingTypes</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
