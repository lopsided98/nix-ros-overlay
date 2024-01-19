
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, diagnostic-msgs, message-generation, message-runtime, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-ros-google-cloud-language";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ros_google_cloud_language/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "469237fb1cd61322d5806cb8358223ef75380506cd10f6039fbaeb582c6f7e26";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs diagnostic-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros clinet library for google cloud language'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
