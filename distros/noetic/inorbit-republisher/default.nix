
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, rospy-message-converter, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "240ef03e220c1b525f047b43d1cfd2d73f10b4ea200bc088358c8597c8fba378";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml python3Packages.rospkg roslib rospy rospy-message-converter std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS to InOrbit topic republisher";
    license = with lib.licenses; [ mit ];
  };
}
