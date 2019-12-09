
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, message-runtime, urg-c, std-msgs, std-srvs, laser-proc, tf, catkin, roslint, nodelet, roscpp, message-generation, roslaunch, rosconsole, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-urg-node";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/kinetic/urg_node/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "8e3154c0e0e1c02a4aa54733d79a4bc78c74108b258de57b2908bd3c976464b0";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure urg-c std-msgs std-srvs laser-proc tf nodelet roscpp message-generation rosconsole diagnostic-updater ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure message-runtime urg-c std-msgs std-srvs laser-proc tf nodelet roscpp message-generation rosconsole diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
