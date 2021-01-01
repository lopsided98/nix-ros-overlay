
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, open-manipulator-msgs, open-manipulator-p-libs, robotis-manipulator, roscpp, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b018ce8d6a55c9eb33bbe60ea36edb2c8e06ed98adc52d368e54a49bc67d6ad8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs open-manipulator-msgs open-manipulator-p-libs robotis-manipulator roscpp sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
