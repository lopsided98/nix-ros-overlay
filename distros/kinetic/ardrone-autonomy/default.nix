
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, binutils, camera-info-manager, catkin, daemontools, git, gtk2, image-transport, libudev, libxml2, message-generation, message-runtime, nav-msgs, roscpp, roslint, sensor-msgs, std-srvs, tf, wirelesstools }:
buildRosPackage {
  pname = "ros-kinetic-ardrone-autonomy";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/kinetic/ardrone_autonomy/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "cae1ffbcd105769bb2a301bfcada004820db497d361e3c9ca1835a18fdf95cab";
  };

  buildType = "catkin";
  buildInputs = [ SDL binutils daemontools git gtk2 libudev libxml2 message-generation roslint wirelesstools ];
  propagatedBuildInputs = [ camera-info-manager image-transport message-runtime nav-msgs roscpp sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ardrone_autonomy is a ROS driver for Parrot AR-Drone 1.0 and 2.0 quadrocopters. This driver is based on official AR-Drone SDK version 2.0.1.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
