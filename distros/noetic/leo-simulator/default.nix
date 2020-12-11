
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_simulator/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ee1b16e40e7d718f2fe49fdb54d1706da07872d1a6f1e3f9d452bbb65a50929c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
