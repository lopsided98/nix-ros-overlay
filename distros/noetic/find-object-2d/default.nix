
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, qt5, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-find-object-2d";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/noetic/find_object_2d/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "704099801e897cec9bb812ca9e1ec89ab4d586ee8adb8427a07caa4a318be6b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport message-filters message-runtime qt5.qtbase roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
