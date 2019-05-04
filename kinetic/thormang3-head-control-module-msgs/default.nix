
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-head-control-module-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_head_control_module_msgs/0.3.0-0.tar.gz;
    sha256 = "b8546320341590906e3c3e04e15add9d5d08e1ebeeeebdbdc60485818f456426";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of messages and services for using thormang3_head_control_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
