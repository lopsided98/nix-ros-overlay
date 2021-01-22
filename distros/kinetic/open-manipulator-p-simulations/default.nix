
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-p-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-simulations";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/kinetic/open_manipulator_p_simulations/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "62660bb288a74200dcae9eeb58680b2c39288d2a2076efa7f55e1d12f7711f96";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-p-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for OpenMANIPULATOR-P Simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
