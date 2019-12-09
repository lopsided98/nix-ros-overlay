
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, std-msgs, cmake-modules, catkin, roscpp, eigen, open-manipulator-msgs, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-control-gui";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_control_gui/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5a8c856cb265e7accc502383cd29d18b4aa42dcbdbf8eb07686d536531c0c7f1";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs cmake-modules qt5.qtbase eigen open-manipulator-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs std-msgs cmake-modules qt5.qtbase eigen open-manipulator-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator GUI control package based on QT'';
    license = with lib.licenses; [ asl20 ];
  };
}
