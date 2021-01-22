
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dnn-detect, magni-bringup, magni-nav, magni-teleop, rosbridge-server, tf2-web-republisher }:
buildRosPackage {
  pname = "ros-kinetic-magni-demos";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_demos/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "afccea8d8a44b8115af2bf647fbca169f9e361b7af5ee092f1351f0abde1c84b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dnn-detect magni-bringup magni-nav magni-teleop rosbridge-server tf2-web-republisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_demos package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
