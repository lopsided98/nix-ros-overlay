
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f93ce9e3e6ea118897d92a85794dd7aec51642755814dacc8fb33ed69ad41c02";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P description'';
    license = with lib.licenses; [ asl20 ];
  };
}
