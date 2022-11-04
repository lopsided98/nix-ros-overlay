
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, radial-menu-backend, radial-menu-model, radial-menu-msgs, radial-menu-rviz }:
buildRosPackage {
  pname = "ros-melodic-radial-menu";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "4df8cfccfbe84a0dfd2158c4497254f5face7eee36ad1ca80a23322ea143432f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ radial-menu-backend radial-menu-model radial-menu-msgs radial-menu-rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu package'';
    license = with lib.licenses; [ mit ];
  };
}
