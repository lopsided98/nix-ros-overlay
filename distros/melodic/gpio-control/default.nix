
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gpio-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cst0/gpio_control-release/archive/release/melodic/gpio_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "36bb27fdd2f6a914db67bdd646795874b37a3f3a2b8def950ac1719b5bd0dbca";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control GPIO pins on Raspberry Pi, Nvidia Jetson, and other Linux devices with GPIO pins'';
    license = with lib.licenses; [ asl20 ];
  };
}
