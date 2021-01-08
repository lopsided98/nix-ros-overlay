
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gateway-msgs, rocon-app-manager-msgs, roslib, rospy, rospy-tutorials, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-rocon-apps";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_apps/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "562a60b4db8f346a1265edcdaf6004996e7489d3c49070e10980ba5265332c2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gateway-msgs rocon-app-manager-msgs roslib rospy rospy-tutorials topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Core rocon apps for use with the appmanager and rocon concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
