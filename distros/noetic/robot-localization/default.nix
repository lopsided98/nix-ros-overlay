
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geometry-msgs, libyamlcpp, message-filters, message-generation, message-runtime, nav-msgs, nodelet, python3Packages, rosbag, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-robot-localization";
  version = "2.6.8-r2";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/noetic/robot_localization/2.6.8-2.tar.gz";
    name = "2.6.8-2.tar.gz";
    sha256 = "fc11542b1c95dbd4cd7670c083f17354691d842ca4225ecb0dbc287e45db9115";
  };

  buildType = "catkin";
  buildInputs = [ message-generation python3Packages.catkin-pkg roslint ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ cmake-modules diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geometry-msgs libyamlcpp message-filters message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
