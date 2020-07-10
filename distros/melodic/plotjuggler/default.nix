
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "2.8.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/2.8.2-1.tar.gz";
    name = "2.8.2-1.tar.gz";
    sha256 = "76f2337a863336bc00a4ad3aa222c683fdc612cdbc3c0dac7f21438ec26e8d53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
