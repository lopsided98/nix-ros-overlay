
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diffbot-base, diffbot-bringup, diffbot-control, diffbot-description, diffbot-gazebo, diffbot-navigation }:
buildRosPackage {
  pname = "ros-noetic-diffbot-robot";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_robot/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8bd9225c1c10e57da7791284740ba78979933f13d1250f965bbb32c72c0c4549";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diffbot-base diffbot-bringup diffbot-control diffbot-description diffbot-gazebo diffbot-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_robot package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
