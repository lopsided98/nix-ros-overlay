
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-slider-publisher";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/noetic/slider_publisher/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "82a79a0a9cac662cf81c61dd3efffacee06847054bf5c5f3c0de5e9f59be9dbe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The slider_publisher package'';
    license = with lib.licenses; [ mit ];
  };
}
