
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geometry-msgs, libyamlcpp, message-filters, message-generation, message-runtime, nav-msgs, pythonPackages, rosbag, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-robot-localization";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "6569baa1e0bb5c003eba9eb82cdf0d5ed9d5451b49ccf0141d720e14d9226f10";
  };

  buildType = "catkin";
  buildInputs = [ message-generation pythonPackages.catkin-pkg roslint ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ cmake-modules diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geometry-msgs libyamlcpp message-filters message-runtime nav-msgs roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
