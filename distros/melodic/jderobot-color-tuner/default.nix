
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, pythonPackages, roslib, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jderobot-color-tuner";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/JdeRobot/ColorTuner-release/archive/release/melodic/jderobot_color_tuner/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "fbd11a0183302b10796d47e4489c4da0709aeb176dc0d00af3770f06629ddb70";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport pythonPackages.rospkg roslib rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_color_tuner tool package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
