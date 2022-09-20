
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo-worlds";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo_worlds/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "237c568012cf16c14eb896bfefc889ab164ee0b444eb8b8f6b3824ee4867acd9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Worlds for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
