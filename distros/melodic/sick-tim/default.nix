
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libusb1, robot-state-publisher, roscpp, roslaunch, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-sick-tim";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/sick_tim-release/archive/release/melodic/sick_tim/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "876226df215f9fc5731e719a33b70dae58a197dfd11b48dbb2830dbdc23cc5b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libusb1 robot-state-publisher roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
