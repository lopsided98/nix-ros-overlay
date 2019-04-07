
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, soem, hardware-interface, trajectory-msgs, joint-limits-interface, realtime-tools, sensor-msgs, tinyxml, ethercat-manager, catkin, diagnostic-updater, rostest, roslaunch, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-minas-control";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/tork-a/minas-release/archive/release/kinetic/minas_control/1.0.10-0.tar.gz;
    sha256 = "8c17756f8b1d89c736f04fb45a149ddc3da5e172f4d69198c4c42aa9e751d02c";
  };

  buildInputs = [ controller-manager soem hardware-interface realtime-tools trajectory-msgs sensor-msgs joint-limits-interface tinyxml ethercat-manager diagnostic-updater transmission-interface ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager hardware-interface realtime-tools trajectory-msgs sensor-msgs joint-limits-interface tinyxml ethercat-manager diagnostic-updater transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains ros_control based robot controller for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    #license = lib.licenses.GPLv2;
  };
}
