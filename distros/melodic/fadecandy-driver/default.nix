
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-fadecandy-driver";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/fadecandy_driver/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "cbce3658bbde18eedfe14719b2ce4e8d4c4f52068f6405314d3c87d0e1c73e74";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs pythonPackages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
