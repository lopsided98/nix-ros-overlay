
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo, leo-gazebo-plugins, leo-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_simulator/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "06fa5cdd434875d1077a49d81e497433d66a23136d6524e0fd81b12ea219627c";
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
