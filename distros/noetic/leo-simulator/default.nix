
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_simulator/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "21668457405b57001e82500582a93b3f7adb36a276eafb090b6082f8cfed93aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
