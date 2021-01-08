
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_simulator/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "50b20dd2256058db319c5ad299a3ec6c3b8f0c626998bfa305ccea4f70f17a08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
