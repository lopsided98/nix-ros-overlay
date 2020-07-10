
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-fadecandy-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/fadecandy_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "750fbb51252fba2e6705d6a180fde509cf1907cc9770898ba61172e7f9275614";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs pythonPackages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
