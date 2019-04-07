
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-kinetic-genlisp";
  version = "0.4.16";

  src = fetchurl {
    url = https://github.com/ros-gbp/genlisp-release/archive/release/kinetic/genlisp/0.4.16-0.tar.gz;
    sha256 = "0fdc21d5c9f318a431067f00f9f22241a4ba98b9635a5c3a6d22ba35acdef871";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common-Lisp ROS message and service generators.'';
    #license = lib.licenses.BSD;
  };
}
