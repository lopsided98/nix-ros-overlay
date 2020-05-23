
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-serialization";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_serialization/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "96b3cf1eb1c300973acfe4948b859b31e5c4bab973237cb089a6f00d68c71b24";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_serialization contains the code for serialization as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesSerializationAndAdaptingTypes">MessagesSerializationAndAdaptingTypes</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
