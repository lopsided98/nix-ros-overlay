
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-robot-dashboard, catkin, kobuki-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-dashboard";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_dashboard/0.5.7-0.tar.gz;
    sha256 = "82243a29379e1dd189f170afad371c0cbe6b9ace00cafc2d496c6ff857b91c71";
  };

  buildInputs = [ rqt-robot-dashboard kobuki-msgs rospy ];
  propagatedBuildInputs = [ rqt-robot-dashboard kobuki-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Kobuki dashboard is a RQT-based plug-in for visualising data from Kobuki and giving easy access
    to basic functionalities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
