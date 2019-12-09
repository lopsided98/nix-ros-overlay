
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, rosunit, eigen, tf2, nav-msgs, rostest, sensor-msgs, diagnostic-msgs, cmake-modules, libyamlcpp, tf2-geometry-msgs, geographic-msgs, rosbag, xmlrpcpp, tf2-ros, message-filters, std-msgs, std-srvs, catkin, pythonPackages, roscpp, message-generation, roslint, diagnostic-updater, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-robot-localization";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "6569baa1e0bb5c003eba9eb82cdf0d5ed9d5451b49ccf0141d720e14d9226f10";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs eigen-conversions eigen pythonPackages.catkin-pkg tf2 nav-msgs sensor-msgs diagnostic-msgs cmake-modules libyamlcpp tf2-geometry-msgs geographic-msgs xmlrpcpp tf2-ros message-filters std-msgs std-srvs roscpp message-generation roslint diagnostic-updater ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions eigen tf2 nav-msgs sensor-msgs diagnostic-msgs cmake-modules libyamlcpp tf2-geometry-msgs geographic-msgs xmlrpcpp tf2-ros message-filters std-msgs std-srvs roscpp diagnostic-updater message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
