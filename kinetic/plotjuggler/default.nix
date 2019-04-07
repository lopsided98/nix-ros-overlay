
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, rosbag, ros-type-introspection, catkin, rostime, roscpp, qt5, binutils, roscpp-serialization, topic-tools, tf }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.1.10";

  src = fetchurl {
    url = https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.1.10-0.tar.gz;
    sha256 = "c009ec528f780e0664bbcba1e2c30dcd8b1ef65b24be51b4e7e352693c30b1e2";
  };

  buildInputs = [ rosbag-storage qt5.qtmultimedia ros-type-introspection rosbag rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  propagatedBuildInputs = [ rosbag-storage qt5.qtmultimedia ros-type-introspection rosbag rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    #license = lib.licenses.LGPLv3;
  };
}
