
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, ethercat-manager, hardware-interface, joint-limits-interface, realtime-tools, roslaunch, rostest, sensor-msgs, soem, tinyxml, trajectory-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-minas-control";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/minas_control/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "8c17756f8b1d89c736f04fb45a149ddc3da5e172f4d69198c4c42aa9e751d02c";
  };

  buildType = "catkin";
  buildInputs = [ soem ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater ethercat-manager hardware-interface joint-limits-interface realtime-tools sensor-msgs tinyxml trajectory-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains ros_control based robot controller for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ gpl2 bsdOriginal ];
  };
}
