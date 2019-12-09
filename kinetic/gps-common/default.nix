
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, message-filters, std-msgs, catkin, rospy, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gps-common";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gps_common/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b51f189ac2581535eada29f83d1e390384620d06a4e0b9c51be055bdf838ec1d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters std-msgs rospy roscpp message-generation nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters std-msgs rospy roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
