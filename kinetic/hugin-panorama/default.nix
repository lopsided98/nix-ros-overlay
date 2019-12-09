
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hugin, sensor-msgs, std-srvs, pythonPackages, catkin, image-view, cv-bridge, imagemagick, rospy, enblend-enfuse }:
buildRosPackage {
  pname = "ros-kinetic-hugin-panorama";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/hugin_panorama-release/archive/release/kinetic/hugin_panorama/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "14dc3c58b3a487febd3a4464c059b7c56fdad5540f1462c60c8e15fa3e39fd2d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-srvs image-view cv-bridge rospy ];
  propagatedBuildInputs = [ hugin sensor-msgs pythonPackages.opencv3 std-srvs pythonPackages.rospkg image-view cv-bridge imagemagick rospy enblend-enfuse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create panoramas in ROS using image snapshots or multiple video streams.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
