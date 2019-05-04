
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, rosemacs, rosbag, git, jsk-gui-msgs, cv-bridge, pythonPackages, iproute, catkin, rosgraph-msgs, jsk-network-tools, jsk-topic-tools, rqt-reconfigure, rostest, rospy }:
buildRosPackage {
  pname = "ros-kinetic-jsk-tools";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_tools/2.2.10-0.tar.gz;
    sha256 = "33024dc94c3688c628c66b6149baed6ae00a8d3d7010b60a44d09f25009795fa";
  };

  buildInputs = [ rosgraph-msgs git ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ rosemacs pythonPackages.rosdep rosbag cv-bridge jsk-gui-msgs pythonPackages.colorama jsk-topic-tools pythonPackages.requests rqt-reconfigure pythonPackages.texttable iproute rosgraph-msgs jsk-network-tools pythonPackages.progressbar rospy pythonPackages.percol ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes emacs scripts, ros tool alias generator, and launch doc generator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
