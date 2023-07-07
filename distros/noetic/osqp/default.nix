
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/osqp/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "878c82ff8c752a036c41211648eb0fa9b3656f9c4c799808dba894dc88022b74";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for OSQP'';
    license = with lib.licenses; [ "Apache" ];
  };
}
