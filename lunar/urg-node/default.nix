
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, roslint, urg-c, sensor-msgs, catkin, roscpp, diagnostic-updater, message-generation, message-runtime, nodelet, dynamic-reconfigure, std-msgs, roslaunch, tf, laser-proc }:
buildRosPackage {
  pname = "ros-lunar-urg-node";
  version = "0.1.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/urg_node-release/archive/release/lunar/urg_node/0.1.11-0.tar.gz;
    sha256 = "93a3f313ebb9d8c3d033dce65e1433925b8b3dec0291a4a24696aa45b78473a4";
  };

  buildInputs = [ std-srvs rosconsole urg-c sensor-msgs roscpp diagnostic-updater message-generation nodelet dynamic-reconfigure std-msgs tf laser-proc ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ std-srvs rosconsole urg-c sensor-msgs roscpp diagnostic-updater message-generation message-runtime nodelet dynamic-reconfigure std-msgs tf laser-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
