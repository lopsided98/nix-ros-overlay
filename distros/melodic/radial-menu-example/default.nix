
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, message-filters, radial-menu-backend, radial-menu-model, radial-menu-msgs, radial-menu-rviz, roscpp, roslaunch, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-example";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/radial_menu_ros-release/archive/release/melodic/radial_menu_example/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "ed0529a58df975527971f92deaf8c08b1bbfcb1dca753fdc75f8b487f18a6468";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy message-filters radial-menu-backend radial-menu-model radial-menu-msgs radial-menu-rviz roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_example package'';
    license = with lib.licenses; [ mit ];
  };
}
