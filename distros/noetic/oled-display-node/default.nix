
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-oled-display-node";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/oled_display_node-release/archive/release/noetic/oled_display_node/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "750524faffbef4380b8a808d522c70a6a5b6949bb44af667260c33047aa25d81";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OLED I2C display node package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
