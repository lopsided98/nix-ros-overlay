
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-msgs";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_msgs/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "7a93da3d20a36be7fd9273386f8ba0308969ad48584077ab5a147523fc435a56";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS messages for qbrobotics® SoftHand Industry.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
