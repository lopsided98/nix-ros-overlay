
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, radial-menu-model, radial-menu-msgs, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-rviz";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_rviz/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "2966e59849094efaa9ee9a6359f74d76abde2204badc0be9b43152ba2f007690";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase radial-menu-model radial-menu-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_rviz package'';
    license = with lib.licenses; [ mit ];
  };
}
