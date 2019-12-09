
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, rosunit, eigen, nodelet, tf2, nav-msgs, rostest, sensor-msgs, diagnostic-msgs, cmake-modules, libyamlcpp, tf2-geometry-msgs, geographic-msgs, rosbag, xmlrpcpp, tf2-ros, message-filters, std-msgs, std-srvs, catkin, pythonPackages, roscpp, message-generation, roslint, diagnostic-updater, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-robot-localization";
  version = "2.6.5-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/melodic/robot_localization/2.6.5-1.tar.gz";
    name = "2.6.5-1.tar.gz";
    sha256 = "971bcda9b4564009674b21d1a344a14ef6d7458f3156b9110ed36b02d933b189";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs eigen-conversions eigen pythonPackages.catkin-pkg nodelet tf2 nav-msgs sensor-msgs diagnostic-msgs cmake-modules libyamlcpp tf2-geometry-msgs geographic-msgs xmlrpcpp tf2-ros message-filters std-msgs std-srvs roscpp message-generation roslint diagnostic-updater ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions eigen nodelet tf2 nav-msgs sensor-msgs diagnostic-msgs cmake-modules libyamlcpp tf2-geometry-msgs geographic-msgs xmlrpcpp tf2-ros message-filters std-msgs std-srvs roscpp diagnostic-updater message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
