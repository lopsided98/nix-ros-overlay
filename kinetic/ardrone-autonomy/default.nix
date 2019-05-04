
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk2, git, binutils, tf, roslint, image-transport, message-generation, message-runtime, std-srvs, camera-info-manager, catkin, nav-msgs, roscpp, SDL, libxml2, wirelesstools, sensor-msgs, daemontools, libudev }:
buildRosPackage {
  pname = "ros-kinetic-ardrone-autonomy";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/kinetic/ardrone_autonomy/1.4.1-0.tar.gz;
    sha256 = "cae1ffbcd105769bb2a301bfcada004820db497d361e3c9ca1835a18fdf95cab";
  };

  buildInputs = [ std-srvs SDL roslint libxml2 camera-info-manager image-transport gtk2 git wirelesstools sensor-msgs roscpp message-generation nav-msgs daemontools binutils tf libudev ];
  propagatedBuildInputs = [ std-srvs camera-info-manager image-transport sensor-msgs tf nav-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ardrone_autonomy is a ROS driver for Parrot AR-Drone 1.0 and 2.0 quadrocopters. This driver is based on official AR-Drone SDK version 2.0.1.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
