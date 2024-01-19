
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-computer-status-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/kinu-garage/computer_status_msgs-release/archive/release/noetic/computer_status_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "45c5641d25d2b6021629fcc253fd5e6d093dfc8b2603c842bf1beee24fb5f8b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages definitions for representing computer's hardware state, such as battery information, GPU, some miscellaneous sensors. Format is in ROS. Originally developed at <a href="https://github.com/PR2/pr2_common/tree/e64f0362b7bff0f4d1d9916f805cf91ad561b439/pr2_msgs">pr2_common repository</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
