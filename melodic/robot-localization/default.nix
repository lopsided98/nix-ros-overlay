
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, geometry-msgs, roslint, pythonPackages, message-filters, message-generation, message-runtime, eigen-conversions, std-srvs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, xmlrpcpp, std-msgs, roscpp, nodelet, cmake-modules, libyamlcpp, sensor-msgs, geographic-msgs, diagnostic-updater, tf2, rostest, eigen, rosunit }:
buildRosPackage {
  pname = "ros-melodic-robot-localization";
  version = "2.6.5-r1";

  src = fetchurl {
    url = https://github.com/cra-ros-pkg/robot_localization-release/archive/release/melodic/robot_localization/2.6.5-1.tar.gz;
    sha256 = "971bcda9b4564009674b21d1a344a14ef6d7458f3156b9110ed36b02d933b189";
  };

  buildInputs = [ diagnostic-msgs geometry-msgs roslint message-filters message-generation eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs nodelet roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen pythonPackages.catkin-pkg ];
  checkInputs = [ rostest rosbag rosunit ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs message-filters message-runtime eigen-conversions std-srvs tf2-geometry-msgs tf2-ros nav-msgs xmlrpcpp std-msgs nodelet roscpp cmake-modules libyamlcpp sensor-msgs geographic-msgs diagnostic-updater tf2 eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
