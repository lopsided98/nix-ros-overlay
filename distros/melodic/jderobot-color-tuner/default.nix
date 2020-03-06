
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-jderobot-color-tuner";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/JdeRobot/ColorTuner-release/archive/release/melodic/jderobot_color_tuner/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "f35d63d671fa099950f4d3956393ddc510f6570879036eb81b66f870e773eeed";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_color_tuner tool package'';
    license = with lib.licenses; [ mit ];
  };
}
