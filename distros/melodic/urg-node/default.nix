
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c, xacro }:
buildRosPackage {
  pname = "ros-melodic-urg-node";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/melodic/urg_node/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "5d9e11e6e34a7141f8b940226a746fda2ddf1a17a2138a6467c88e49cf9af3bd";
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
