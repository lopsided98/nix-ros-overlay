
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, joint-limits-interface, controller-manager, soem, hardware-interface, ethercat-manager, catkin, tinyxml, transmission-interface, realtime-tools, diagnostic-updater, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-minas-control";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/minas_control/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "8c17756f8b1d89c736f04fb45a149ddc3da5e172f4d69198c4c42aa9e751d02c";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs controller-manager soem hardware-interface joint-limits-interface ethercat-manager tinyxml transmission-interface realtime-tools diagnostic-updater ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs controller-manager joint-limits-interface hardware-interface ethercat-manager tinyxml transmission-interface realtime-tools diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains ros_control based robot controller for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ gpl2 bsdOriginal ];
  };
}
