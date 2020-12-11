
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo }:
buildRosPackage {
  pname = "ros-melodic-leo-simulator";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/melodic/leo_simulator/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "b03a8815470371a9d524b499b933e20456311ad3b464dfb850a34cfa49d36888";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
