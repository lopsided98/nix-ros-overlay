
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, open-manipulator-msgs, qt5, robotis-manipulator, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-control-gui";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p_control_gui/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e12fdcaa359f96ee9bf6e27f0e2cc6b87c8a7db7976e8d26ea756bb2bf9aee7e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen open-manipulator-msgs qt5.qtbase robotis-manipulator roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Control GUI'';
    license = with lib.licenses; [ asl20 ];
  };
}
