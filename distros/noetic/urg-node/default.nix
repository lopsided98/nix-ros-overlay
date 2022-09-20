
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c, xacro }:
buildRosPackage {
  pname = "ros-noetic-urg-node";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/noetic/urg_node/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "d1427c65a42f1797bdd269376eefe1e1143eff988ccbfe6413171eb55dd8113b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure laser-proc message-generation message-runtime nodelet rosconsole roscpp sensor-msgs std-msgs std-srvs tf urg-c xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
