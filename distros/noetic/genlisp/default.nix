
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genlisp";
  version = "0.4.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genlisp-release/archive/release/noetic/genlisp/0.4.18-1.tar.gz";
    name = "0.4.18-1.tar.gz";
    sha256 = "a2a0af65d9e93227ac21bbf58e2ee27b02f3172523787e10165c1351ab4966c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Common-Lisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
