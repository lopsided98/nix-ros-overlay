
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, rosbag, ros-type-introspection, catkin, rostime, roscpp, qt5, binutils, roscpp-serialization, topic-tools, tf }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "2.1.9";

  src = fetchurl {
    url = https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/2.1.9-0.tar.gz;
    sha256 = "0a93dd9c3dd1fc1e579699a8c8b776bec347349364ae53fc97e2a541d7ee1068";
  };

  buildInputs = [ rosbag-storage qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  propagatedBuildInputs = [ rosbag-storage qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase roscpp binutils roscpp-serialization topic-tools qt5.qtdeclarative tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
