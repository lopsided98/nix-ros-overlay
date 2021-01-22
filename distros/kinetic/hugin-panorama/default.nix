
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, enblend-enfuse, hugin, image-view, imagemagick, pythonPackages, rospy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-hugin-panorama";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/hugin_panorama-release/archive/release/kinetic/hugin_panorama/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "14dc3c58b3a487febd3a4464c059b7c56fdad5540f1462c60c8e15fa3e39fd2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge enblend-enfuse hugin image-view imagemagick pythonPackages.opencv3 pythonPackages.rospkg rospy sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create panoramas in ROS using image snapshots or multiple video streams.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
