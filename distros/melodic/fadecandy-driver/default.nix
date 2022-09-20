
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, libusb1, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-fadecandy-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/fadecandy_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "0deab9f6d9db619017f140288d2a31bcc6b462126440f2098340e2ec19882298";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rospy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
