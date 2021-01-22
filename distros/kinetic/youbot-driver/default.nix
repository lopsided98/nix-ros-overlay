
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-youbot-driver";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/youbot-release/youbot_driver-release/archive/release/kinetic/youbot_driver/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "a30d432375ee3f192925307a43c2af9003868601cac799811351cfde4c910470";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''driver for the KUKA youBot robot'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
