
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "003bb27782933e3388307f646b040be5a8e8fe9b0db8d6ace08783901bcede5d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
