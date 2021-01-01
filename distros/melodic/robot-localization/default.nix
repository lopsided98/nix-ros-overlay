
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, libyamlcpp, message-filters, message-generation, message-runtime, nav-msgs, nodelet, pythonPackages, rosbag, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-robot-localization";
  version = "2.6.9-r1";

  src = fetchurl {
    url = "https://github.com/cra-ros-pkg/robot_localization-release/archive/release/melodic/robot_localization/2.6.9-1.tar.gz";
    name = "2.6.9-1.tar.gz";
    sha256 = "342f2898d175fa666fbb506081599aaa431c4fd5e1e54c4c08f11e68e9408394";
  };

  buildType = "catkin";
  buildInputs = [ geographiclib message-generation pythonPackages.catkin-pkg roslint ];
  checkInputs = [ rosbag rostest rosunit ];
  propagatedBuildInputs = [ cmake-modules diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geometry-msgs libyamlcpp message-filters message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
