
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, catkin, diagnostic-msgs, nav-msgs, qt5, ros-type-introspection, rosbag, rosbag-storage, roscpp, roscpp-serialization, rostime, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "a5152333f0d3519502bf09d9c4b11128a56cd2bae03b76be7f3de9bae2933e67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils diagnostic-msgs nav-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg ros-type-introspection rosbag rosbag-storage roscpp roscpp-serialization rostime tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
