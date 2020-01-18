
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros-msgs";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros_msgs/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "2ab6fd1788d1f12507f2da9ee2ef3e1c267b7651ee86541fc89d56b09b08980a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dccomms_ros_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
