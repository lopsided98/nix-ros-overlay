
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-p-gazebo }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-simulations";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/melodic/open_manipulator_p_simulations/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "acd7632a463692f6330e037e29c28ce02f73947ebd536a93857bda73e9f043ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-p-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for OpenMANIPULATOR-P Simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
