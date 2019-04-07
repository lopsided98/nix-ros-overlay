
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, roslint, urg-c, sensor-msgs, catkin, roscpp, diagnostic-updater, message-generation, message-runtime, nodelet, dynamic-reconfigure, std-msgs, roslaunch, tf, laser-proc }:
buildRosPackage {
  pname = "ros-kinetic-urg-node";
  version = "0.1.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/urg_node-release/archive/release/kinetic/urg_node/0.1.11-0.tar.gz;
    sha256 = "8e3154c0e0e1c02a4aa54733d79a4bc78c74108b258de57b2908bd3c976464b0";
  };

  buildInputs = [ std-srvs rosconsole urg-c sensor-msgs roscpp diagnostic-updater message-generation nodelet dynamic-reconfigure std-msgs tf laser-proc ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ std-srvs rosconsole urg-c sensor-msgs roscpp diagnostic-updater message-generation message-runtime nodelet dynamic-reconfigure std-msgs tf laser-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    #license = lib.licenses.BSD;
  };
}
