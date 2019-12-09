
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, image-transport, nav-msgs, sensor-msgs, daemontools, SDL, camera-info-manager, libxml2, std-srvs, catkin, wirelesstools, roscpp, message-generation, binutils, git, roslint, gtk2, message-runtime, libudev }:
buildRosPackage {
  pname = "ros-kinetic-ardrone-autonomy";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/kinetic/ardrone_autonomy/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "cae1ffbcd105769bb2a301bfcada004820db497d361e3c9ca1835a18fdf95cab";
  };

  buildType = "catkin";
  buildInputs = [ git binutils sensor-msgs daemontools SDL camera-info-manager std-srvs tf libxml2 roslint image-transport wirelesstools gtk2 roscpp message-generation nav-msgs libudev ];
  propagatedBuildInputs = [ sensor-msgs std-srvs camera-info-manager tf image-transport roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ardrone_autonomy is a ROS driver for Parrot AR-Drone 1.0 and 2.0 quadrocopters. This driver is based on official AR-Drone SDK version 2.0.1.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
