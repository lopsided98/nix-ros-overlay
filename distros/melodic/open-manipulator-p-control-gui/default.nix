
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, open-manipulator-msgs, qt5, robotis-manipulator, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-control-gui";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p_control_gui/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "61faa3e2665d7ce3f6d9cd2c648241df61041381da1e8d96d3435a414dbdd28e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen open-manipulator-msgs qt5.qtbase robotis-manipulator roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Control GUI'';
    license = with lib.licenses; [ asl20 ];
  };
}
