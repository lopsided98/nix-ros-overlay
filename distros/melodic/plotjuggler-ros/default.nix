
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler-ros";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/melodic/plotjuggler_ros/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9ba0903e11cc5eac95d47d4789f1300e097486721ab554adabc3ff791c21edce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
