
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, rosbag, ros-type-introspection, catkin, rostime, roscpp, nav-msgs, qt5, binutils, roscpp-serialization, topic-tools, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "2d49f098bcd536ffd5823e3873a1ab75358da8681956ba483571bfb076f999a8";
  };

  buildType = "catkin";
  buildInputs = [ rosbag-storage qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase roscpp nav-msgs binutils roscpp-serialization topic-tools diagnostic-msgs qt5.qtdeclarative tf ];
  propagatedBuildInputs = [ rosbag-storage tf qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase nav-msgs binutils roscpp-serialization topic-tools diagnostic-msgs qt5.qtdeclarative roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
