
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-novatel-oem7-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kinetic/novatel_oem7_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "26dbbcd6fb2372414fdb39248fa0fbbc788a03179216cbf04d43457ff9b30025";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for NovAtel Oem7 family of receivers.'';
    license = with lib.licenses; [ mit ];
  };
}
