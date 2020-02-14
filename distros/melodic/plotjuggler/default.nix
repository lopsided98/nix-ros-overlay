
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, catkin, diagnostic-msgs, nav-msgs, qt5, ros-type-introspection, rosbag, rosbag-storage, roscpp, roscpp-serialization, rostime, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "3f0f2f5fa1cf4a0b9fe8c25779b5f0a93a5afac2fec96e649f06cd5e91f67303";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils diagnostic-msgs nav-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg ros-type-introspection rosbag rosbag-storage roscpp roscpp-serialization rostime tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
