
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-lunar-genlisp";
  version = "0.4.16";

  src = fetchurl {
    url = https://github.com/ros-gbp/genlisp-release/archive/release/lunar/genlisp/0.4.16-0.tar.gz;
    sha256 = "fcdf39b4e33e069f64dc09d655210c1da26ed2fe5de41f6d54a5ccb0ec0673a2";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common-Lisp ROS message and service generators.'';
    #license = lib.licenses.BSD;
  };
}
