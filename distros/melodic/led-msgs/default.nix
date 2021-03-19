
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-led-msgs";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/melodic/led_msgs/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "33f5828f59bb4c59a70c823c37f587210c1aaf1cf9524ae5762a93c10442c27f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for LEDs and LED strips'';
    license = with lib.licenses; [ mit ];
  };
}
