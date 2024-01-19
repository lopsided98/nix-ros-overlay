
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo, leo-gazebo-plugins, leo-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_simulator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "b5c7410960e5b17bf4c7747c1c21af5aa61c201c9dc7779711a2e06ef7f750fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-gazebo leo-gazebo-plugins leo-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
