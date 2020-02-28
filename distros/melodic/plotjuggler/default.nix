
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, catkin, diagnostic-msgs, nav-msgs, qt5, ros-type-introspection, rosbag, rosbag-storage, roscpp, roscpp-serialization, rostime, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "5a912c34f996f1e378249f713bc7fc6ebce018c250798dd3b8040e77e1dd3b11";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils diagnostic-msgs nav-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg ros-type-introspection rosbag rosbag-storage roscpp roscpp-serialization rostime tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
