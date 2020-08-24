
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, radial-menu-backend, radial-menu-model, radial-menu-msgs, radial-menu-rviz }:
buildRosPackage {
  pname = "ros-melodic-radial-menu";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "c37f2ec05780e8c534b82d2214883a09a189f993ff8c0f6db67b5c5778cf07b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ radial-menu-backend radial-menu-model radial-menu-msgs radial-menu-rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu package'';
    license = with lib.licenses; [ mit ];
  };
}
