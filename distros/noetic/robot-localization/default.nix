
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, libyamlcpp, message-filters, message-generation, message-runtime, nav-msgs, nodelet, python3Packages, rosbag, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-robot-localization";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/noetic/robot_localization/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "8698f935ea320a63e0e4c8ec45938e6d7ee2067b163dcda0fd0c67bb9d2e4b60";
  };

  buildType = "catkin";
  buildInputs = [ message-generation python3Packages.catkin-pkg roslint ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ cmake-modules diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geographiclib geometry-msgs libyamlcpp message-filters message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
