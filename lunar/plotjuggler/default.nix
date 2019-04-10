
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, rosbag, ros-type-introspection, catkin, rostime, roscpp, qt5, binutils, roscpp-serialization, topic-tools, tf }:
buildRosPackage {
  pname = "ros-lunar-plotjuggler";
  version = "2.1.10";

  src = fetchurl {
    url = https://github.com/facontidavide/plotjuggler-release/archive/release/lunar/plotjuggler/2.1.10-0.tar.gz;
    sha256 = "5b3e5a78adc1446fa2d5eb714fc1064da31070932f7e751361fc7a6fdefb2cc6";
  };

  buildInputs = [ rosbag-storage qt5.qtmultimedia ros-type-introspection rosbag rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  propagatedBuildInputs = [ rosbag-storage qt5.qtmultimedia ros-type-introspection rosbag rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    #license = lib.licenses.LGPLv3;
  };
}
