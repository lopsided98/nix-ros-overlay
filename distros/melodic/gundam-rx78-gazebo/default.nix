
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-localization, gazebo-plugins, gazebo-ros, gazebo-ros-control, gundam-rx78-control, gundam-rx78-description, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-gundam-rx78-gazebo";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/melodic/gundam_rx78_gazebo/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "0115b438aa2868aa547464ed22dfbedfd01b0c62a37d4d0b4fa3b7f3310e50c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ fake-localization gazebo-plugins gazebo-ros gazebo-ros-control gundam-rx78-control gundam-rx78-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_gazebo contains launch scripts for simulating the GUNDAM RX-78 robot in the gazebo simulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
