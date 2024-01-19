
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-p-gazebo }:
buildRosPackage {
  pname = "ros-noetic-open-manipulator-p-simulations";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/noetic/open_manipulator_p_simulations/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6fb11bddc91d991ff81ee705f6ff757641d93eb76343c0ba16e7f176c01b646f";
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
