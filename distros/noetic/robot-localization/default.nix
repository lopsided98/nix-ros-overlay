
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, message-filters, message-generation, message-runtime, nav-msgs, nodelet, python3Packages, rosbag, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-robot-localization";
  version = "2.7.5-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/noetic/robot_localization/2.7.5-1.tar.gz";
    name = "2.7.5-1.tar.gz";
    sha256 = "d1414c2fe217759515e8ede82d674060aba7a898da82e5bff3cd1268c0fa5714";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.catkin-pkg roslint ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ angles cmake-modules diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geographiclib geometry-msgs message-filters message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
