
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-slider-publisher";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/noetic/slider_publisher/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c625745bc79b0ccb639536e058b81b0b04d4df513d1b1f0aea66cd6dc4621935";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The slider_publisher package'';
    license = with lib.licenses; [ mit ];
  };
}
