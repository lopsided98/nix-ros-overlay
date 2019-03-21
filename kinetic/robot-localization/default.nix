
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, geometry-msgs, roslint, pythonPackages, message-filters, message-generation, message-runtime, eigen-conversions, std-srvs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, xmlrpcpp, std-msgs, roscpp, cmake-modules, libyamlcpp, sensor-msgs, geographic-msgs, rostest, diagnostic-updater, tf2, eigen, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-robot-localization";
  version = "2.4.7-r2";

  src = fetchurl {
    url = https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.4.7-2.tar.gz;
    sha256 = "b1277991750d8a27b3ffea4d5a7cb9acaf1e7ec03d9ea9019c09fbf6078626a3";
  };

  checkInputs = [ rostest rosbag rosunit ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs diagnostic-msgs roscpp geometry-msgs cmake-modules libyamlcpp sensor-msgs message-filters geographic-msgs diagnostic-updater tf2 message-runtime eigen eigen-conversions ];
  nativeBuildInputs = [ std-srvs tf2-geometry-msgs catkin tf2-ros nav-msgs xmlrpcpp std-msgs diagnostic-msgs roscpp geometry-msgs cmake-modules roslint libyamlcpp sensor-msgs message-filters eigen-conversions geographic-msgs diagnostic-updater tf2 message-generation eigen pythonPackages.catkin-pkg ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    #license = lib.licenses.BSD;
  };
}
