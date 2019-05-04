
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-action-module-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_action_module_msgs/0.3.0-0.tar.gz;
    sha256 = "8585d2f471525be59d98dcb4e245826fe3ac457bdc9faeee02225a9d2ebe6acf";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of messages and services for using thormang3_action_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
