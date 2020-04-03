
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-kinetic-urg-node";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/kinetic/urg_node/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "9b65f9cfc1bb5eb6faf82404c4853ec3ea9625c9b8be8c15144d91bb4e32f949";
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
