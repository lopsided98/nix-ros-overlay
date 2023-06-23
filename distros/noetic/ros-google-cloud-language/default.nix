
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, diagnostic-msgs, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-noetic-ros-google-cloud-language";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ros_google_cloud_language/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "a4e4b95e78868a5cfbb7abfd884e073a4b9529b79ea027a25012a7e625f9c335";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros clinet library for google cloud language'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
