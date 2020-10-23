
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo }:
buildRosPackage {
  pname = "ros-melodic-leo-simulator";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/melodic/leo_simulator/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "1b264a54c1a5a3b6b23a9fac44339de131d5a261794158b8eefa09e97788e30f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
