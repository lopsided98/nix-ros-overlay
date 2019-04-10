
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, catkin, topic-tools, rosserial-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosserial-server";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_server/0.7.7-0.tar.gz;
    sha256 = "4105ece3ca8668fd5023e4cba8f0e90ed3428bd75b26e612640ab73d9221c52e";
  };

  buildInputs = [ topic-tools roscpp rosserial-msgs std-msgs ];
  propagatedBuildInputs = [ rosserial-python std-msgs topic-tools rosserial-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    #license = lib.licenses.BSD;
  };
}
