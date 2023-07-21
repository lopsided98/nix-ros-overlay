
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, diagnostic-msgs, message-generation, message-runtime, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-ros-google-cloud-language";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ros_google_cloud_language/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "bee86847eaa1e3c0894fdc0285c91701f5209c704d192a3bc4d42161a5a9e1ab";
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
