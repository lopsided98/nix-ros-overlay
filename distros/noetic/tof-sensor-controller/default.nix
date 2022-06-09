
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-tof-sensor-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/tof_sensor_controller/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "9915f2cc49f0b8b47642f2ff1278478467f846bc0bc110439f032992a6f1453b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tof_sensor_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
