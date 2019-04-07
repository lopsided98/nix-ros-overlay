
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, md49-messages, message-generation, message-runtime, md49-serialport, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-md49-base-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/Scheik/md49_base_controller-release/archive/release/melodic/md49_base_controller/0.1.4-1.tar.gz;
    sha256 = "dc2871ad616ad8cefde86ba1025f9b5d06059328741d2850d5503770f95700ac";
  };

  buildInputs = [ md49-messages message-generation md49-serialport rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ md49-messages message-runtime md49-serialport rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_base_controller package'';
    #license = lib.licenses.BSD;
  };
}
