
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-noetic-urg-node";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/noetic/urg_node/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "e05efd7745b14085cadfad9e9660b6edaf919e3aed17a060b44c18f016f0d6e4";
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
