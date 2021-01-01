
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-msgs";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_msgs/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "28181b950a206e9a148f5ca518685914dea85e236395da30472890925c973efb";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
