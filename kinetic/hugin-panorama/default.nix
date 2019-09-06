
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, imagemagick, hugin, sensor-msgs, cv-bridge, pythonPackages, catkin, enblend-enfuse, image-view, rospy }:
buildRosPackage {
  pname = "ros-kinetic-hugin-panorama";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/hugin_panorama-release/archive/release/kinetic/hugin_panorama/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "14dc3c58b3a487febd3a4464c059b7c56fdad5540f1462c60c8e15fa3e39fd2d";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs sensor-msgs cv-bridge image-view rospy ];
  propagatedBuildInputs = [ std-srvs imagemagick hugin pythonPackages.rospkg sensor-msgs cv-bridge enblend-enfuse pythonPackages.opencv3 image-view rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create panoramas in ROS using image snapshots or multiple video streams.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
