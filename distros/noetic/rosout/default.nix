
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "f0d14643641a30cdc5802ffdfa88b9a62009d3ae42d41924aa166096916de067";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
