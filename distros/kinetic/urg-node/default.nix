
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-kinetic-urg-node";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/kinetic/urg_node/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "7e8b6fa6f623347a42fc45c34cd36bc12b41998dbcdbc1753e1dabc52c8e4c04";
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
