
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-fadecandy-driver";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/fadecandy_driver/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "b9d68a934b7729c3b519eb66126eda7e61b6237a1f96cec651b983f8e9bd4e93";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs pythonPackages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
