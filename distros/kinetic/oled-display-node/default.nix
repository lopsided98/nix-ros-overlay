
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-oled-display-node";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/oled_display_node-release/archive/release/kinetic/oled_display_node/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "43240dde0e6784a7a8f4f38849cb4df6215b785295752dece1534894bb0f78ff";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OLED I2C display node package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
