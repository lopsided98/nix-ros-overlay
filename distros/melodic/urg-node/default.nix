
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-melodic-urg-node";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/melodic/urg_node/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "788bc2f2c97a4ec356e4080f7b42ac732c6a38d00146f7afa1fb2d6f586559c7";
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
