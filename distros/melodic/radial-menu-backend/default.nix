
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, radial-menu-model, radial-menu-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-backend";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_backend/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "69aba8add28b2d8c03e12754c76b9f64ae33f99b048fad0323670da8fc9ead6b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet pluginlib radial-menu-model radial-menu-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_backend package'';
    license = with lib.licenses; [ mit ];
  };
}
