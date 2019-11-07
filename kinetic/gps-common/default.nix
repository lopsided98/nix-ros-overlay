
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-gps-common";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gps_common/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b51f189ac2581535eada29f83d1e390384620d06a4e0b9c51be055bdf838ec1d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters nav-msgs message-generation rospy std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters nav-msgs message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
