
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, std-msgs, std-srvs, genmsg, tf, catkin, qt-gui-cpp, image-transport, cv-bridge, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-find-object-2d";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/kinetic/find_object_2d/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "94e39c0827a007fca6392a1b3c6a337c6badcc8c0569c181e483c1147b77154a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters std-msgs std-srvs tf qt-gui-cpp image-transport cv-bridge roscpp rospy ];
  propagatedBuildInputs = [ sensor-msgs message-filters std-msgs std-srvs tf qt-gui-cpp image-transport cv-bridge roscpp rospy ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
