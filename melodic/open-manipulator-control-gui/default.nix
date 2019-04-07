
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, qt5, eigen, std-msgs, roscpp, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-control-gui";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_control_gui/2.0.1-0.tar.gz;
    sha256 = "e4dc03e16d77a2295b53e586737453f552dc2b256e064bf784c592fe58cca2cd";
  };

  buildInputs = [ cmake-modules open-manipulator-msgs eigen std-msgs sensor-msgs roscpp qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules open-manipulator-msgs eigen std-msgs sensor-msgs roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator GUI control package based on QT'';
    #license = lib.licenses.Apache 2.0;
  };
}
