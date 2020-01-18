
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, catkin, diagnostic-msgs, nav-msgs, qt5, ros-type-introspection, rosbag, rosbag-storage, roscpp, roscpp-serialization, rostime, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "4cbac0de83143ecb3bf3f129783a75cb8f9baa735106fa2dbd21cabfac54b3b9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils diagnostic-msgs nav-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg ros-type-introspection rosbag rosbag-storage roscpp roscpp-serialization rostime tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
