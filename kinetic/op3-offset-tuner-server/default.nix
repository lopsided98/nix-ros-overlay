
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller, op3-offset-tuner-msgs, std-msgs, catkin, libyamlcpp, op3-base-module, roscpp, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-server";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_offset_tuner_server/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "58b43b0685e0d6fe1b2476e39feaaacd7220e146fe5227547e00fa201fb0a602";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller op3-offset-tuner-msgs std-msgs libyamlcpp op3-base-module roscpp dynamixel-sdk ];
  propagatedBuildInputs = [ robotis-controller op3-offset-tuner-msgs std-msgs libyamlcpp op3-base-module roscpp dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The offset_tuner_server package'';
    license = with lib.licenses; [ asl20 ];
  };
}
