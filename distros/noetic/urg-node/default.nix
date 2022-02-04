
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-noetic-urg-node";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/noetic/urg_node/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "1011c7818f280d7104bc6cb80a0e5a036965d4427f19a8814dc6bd7bbce7b725";
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
