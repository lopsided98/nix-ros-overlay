
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, radial-menu-model, radial-menu-msgs, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-rviz";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_rviz/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "175a893d0a2ff10d77b64d4dc598bbdc8488c382f33ae234fbb3cff07df54e0f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase radial-menu-model radial-menu-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_rviz package'';
    license = with lib.licenses; [ mit ];
  };
}
