
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, radial-menu-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-model";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_model/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "76ad5f60996035204cf0de4078eb269ebc4b770ed75ce3d407925f9c25cf9b2a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ radial-menu-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_model package'';
    license = with lib.licenses; [ mit ];
  };
}
