
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libusb, libusb1, robot-state-publisher, roscpp, roslaunch, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-sick-tim";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/sick_tim-release/archive/release/kinetic/sick_tim/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "efe75a30df430fd5d819272516de755f7dd306876f7c5b70fd5823d42cccc602";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libusb libusb1 robot-state-publisher roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
