
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosout";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosout/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "aa10e2e8cf9e8fcc57f5f90ac992c96c82c39c5b8762d6c05582ed77bd7f16c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
