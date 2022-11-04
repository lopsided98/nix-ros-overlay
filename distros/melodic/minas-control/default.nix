
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, ethercat-manager, hardware-interface, joint-limits-interface, realtime-tools, roslaunch, rostest, sensor-msgs, soem, tinyxml, trajectory-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-minas-control";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/melodic/minas_control/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b3d7ec61f7f282359cef85b5a974807849ff747f9e2aff0d8589e8a9cbf363b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin soem ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater ethercat-manager hardware-interface joint-limits-interface realtime-tools sensor-msgs tinyxml trajectory-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains ros_control based robot controller for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ "GPL-2.0-only" bsdOriginal ];
  };
}
