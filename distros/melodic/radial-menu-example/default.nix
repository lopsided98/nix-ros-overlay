
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, message-filters, radial-menu-backend, radial-menu-model, radial-menu-msgs, radial-menu-rviz, roscpp, roslaunch, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-example";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_example/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "375fbdb750b80900178b98b0511deca80b1940a379cb110fcd48aff33e390f06";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy message-filters radial-menu-backend radial-menu-model radial-menu-msgs radial-menu-rviz roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_example package'';
    license = with lib.licenses; [ mit ];
  };
}
