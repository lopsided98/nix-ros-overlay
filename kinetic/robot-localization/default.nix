
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, geometry-msgs, roslint, pythonPackages, message-filters, message-generation, message-runtime, eigen-conversions, std-srvs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, xmlrpcpp, std-msgs, roscpp, cmake-modules, libyamlcpp, sensor-msgs, geographic-msgs, diagnostic-updater, tf2, rostest, eigen, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-robot-localization";
  version = "2.4.7-r2";

  src = fetchurl {
    url = https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.4.7-2.tar.gz;
    sha256 = "b1277991750d8a27b3ffea4d5a7cb9acaf1e7ec03d9ea9019c09fbf6078626a3";
  };

  buildInputs = [ diagnostic-msgs geometry-msgs roslint message-filters message-generation eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen pythonPackages.catkin-pkg ];
  checkInputs = [ rostest rosbag rosunit ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs message-filters message-runtime eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
