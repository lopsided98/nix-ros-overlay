
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, md49-messages, message-generation, message-runtime, md49-serialport, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-md49-base-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/Scheik/md49_base_controller-release/archive/release/kinetic/md49_base_controller/0.1.4-1.tar.gz;
    sha256 = "b67dddd94b6a93f0c6fc9515a3f692344278e7c7e87a47171e9fb2617530a8ca";
  };

  propagatedBuildInputs = [ md49-messages message-runtime md49-serialport rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ md49-messages message-generation md49-serialport rospy std-msgs catkin roscpp geometry-msgs ];

  meta = {
    description = ''The md49_base_controller package'';
    #license = lib.licenses.BSD;
  };
}
