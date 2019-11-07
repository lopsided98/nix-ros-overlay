
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "ea8f9a5112b819ab8544f212a5913ad832ffdecc981df427ba1100a73833d9cf";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs message-generation actionlib std-msgs roscpp ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime actionlib std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dccomms_ros_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
