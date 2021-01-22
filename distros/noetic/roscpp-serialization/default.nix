
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-serialization";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_serialization/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "ddbc65e42b525bdb29ec8795e05470984cec6c90839d16d577e6b752017e355a";
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
