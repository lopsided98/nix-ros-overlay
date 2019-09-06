
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, geometry-msgs, roslint, pythonPackages, message-filters, message-generation, message-runtime, eigen-conversions, std-srvs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, xmlrpcpp, std-msgs, roscpp, cmake-modules, libyamlcpp, sensor-msgs, geographic-msgs, diagnostic-updater, tf2, rostest, eigen, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-robot-localization";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "6569baa1e0bb5c003eba9eb82cdf0d5ed9d5451b49ccf0141d720e14d9226f10";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs geometry-msgs roslint message-filters message-generation eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen pythonPackages.catkin-pkg ];
  checkInputs = [ rostest rosbag rosunit ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs message-filters message-runtime eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
