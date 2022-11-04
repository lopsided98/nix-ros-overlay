
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dccomms-ros-msgs, git, message-generation, message-runtime, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "9c82b3dcef96d0211f6267f3c6f9bdc87c0d127a2607240f102c17cd65f5a010";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dccomms-ros-msgs git message-runtime roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = ''The dccomms_ros package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
