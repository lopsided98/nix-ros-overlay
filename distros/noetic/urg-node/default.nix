
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-noetic-urg-node";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/noetic/urg_node/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "c49e047ac49d8e1e9c56f49d9be92f796c9342250596d1fbe00245d9aa4998ab";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure laser-proc message-generation message-runtime nodelet rosconsole roscpp sensor-msgs std-msgs std-srvs tf urg-c ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
