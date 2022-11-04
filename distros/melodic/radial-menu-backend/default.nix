
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, radial-menu-model, radial-menu-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-backend";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_backend/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "70a38ac71cefd6d8a944e095aa7f2ad495366d0dc24067d82428c61f89bed862";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet pluginlib radial-menu-model radial-menu-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_backend package'';
    license = with lib.licenses; [ mit ];
  };
}
