
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-description";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p_description/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "1dfaddfdc6e15b0d88eb6e187a3ebaa5b6bafe59a867b8c2a48b0774488946d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P description'';
    license = with lib.licenses; [ asl20 ];
  };
}
