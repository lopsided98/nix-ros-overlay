
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-traits, rostime, cpp-common, catkin }:
buildRosPackage {
  pname = "ros-lunar-roscpp-serialization";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/roscpp_serialization/0.6.11-0.tar.gz;
    sha256 = "aa39e16f7d3fcafb4860f63a6ab8531b2c76ae5b4a77ce724a9fd6bac8a2465f";
  };

  buildInputs = [ roscpp-traits rostime cpp-common ];
  propagatedBuildInputs = [ roscpp-traits rostime cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_serialization contains the code for serialization as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesSerializationAndAdaptingTypes">MessagesSerializationAndAdaptingTypes</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
