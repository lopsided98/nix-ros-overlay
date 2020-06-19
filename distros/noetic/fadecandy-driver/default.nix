
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-driver";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_driver/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "f02aa46caa568f14395046a873af254fd5af3403ff52099414091f908930ea48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs pythonPackages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
