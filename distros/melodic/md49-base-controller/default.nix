
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, md49-messages, md49-serialport, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-md49-base-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Scheik/md49_base_controller-release/archive/release/melodic/md49_base_controller/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "dc2871ad616ad8cefde86ba1025f9b5d06059328741d2850d5503770f95700ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs md49-messages md49-serialport message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_base_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
