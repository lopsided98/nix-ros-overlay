
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-localization, gazebo-plugins, gazebo-ros, gazebo-ros-control, gundam-rx78-control, gundam-rx78-description, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-gundam-rx78-gazebo";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/gundam_rx78_gazebo/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "09e6982718bcd2aaccafd1fee6f8a6f53f41e41f26aa28c9c8ebb264221233b0";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ fake-localization gazebo-plugins gazebo-ros gazebo-ros-control gundam-rx78-control gundam-rx78-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_gazebo contains launch scripts for simulating the GUNDAM RX-78 robot in the gazebo simulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
