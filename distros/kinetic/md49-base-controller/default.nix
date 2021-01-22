
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, md49-messages, md49-serialport, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-md49-base-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Scheik/md49_base_controller-release/archive/release/kinetic/md49_base_controller/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "b67dddd94b6a93f0c6fc9515a3f692344278e7c7e87a47171e9fb2617530a8ca";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs md49-messages md49-serialport message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_base_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
