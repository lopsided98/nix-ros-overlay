
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gpio-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cst0/gpio_control-release/archive/release/kinetic/gpio_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f7b5a3a99b94cf5c7e9710c54dd7491991942a3ff835e87e70a15e1afa78bdaf";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control GPIO pins on Raspberry Pi, Nvidia Jetson, and other Linux devices with GPIO pins'';
    license = with lib.licenses; [ asl20 ];
  };
}
