
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-radar-omnipresense";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/SCU-RSL-ROS/radar_omnipresense-release/archive/release/kinetic/radar_omnipresense/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "14dae2bb24aa13c09d11082add66ed2e2d50421f536e86623fb780de0f05990b";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    license = with lib.licenses; [ "ECL2.0" ];
  };
}
