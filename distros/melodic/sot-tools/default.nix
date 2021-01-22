
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, sot-core }:
buildRosPackage {
  pname = "ros-melodic-sot-tools";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-tools-ros-release/archive/release/melodic/sot-tools/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "27e2611dd23d5da8e7881daced1dcee22abdcd81f59b2a10ed56614e2978ab49";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ catkin dynamic-graph-python sot-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Miscellanous entities for the stack of tasks'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
