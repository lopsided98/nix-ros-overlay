
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller, thormang3-base-module, std-msgs, catkin, libyamlcpp, roscpp, thormang3-offset-tuner-msgs, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-server";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_offset_tuner_server/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "55295d0916ff373d54812e77783b2561f07bd48cd96aa97b18b4c6e0a0e0878d";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller std-msgs thormang3-base-module libyamlcpp roscpp thormang3-offset-tuner-msgs dynamixel-sdk ];
  propagatedBuildInputs = [ robotis-controller std-msgs thormang3-base-module libyamlcpp roscpp thormang3-offset-tuner-msgs dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The offset_tuner_server package'';
    license = with lib.licenses; [ asl20 ];
  };
}
