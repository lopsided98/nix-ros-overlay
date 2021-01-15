
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-computer-status-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/130s/computer_status_msgs-release/archive/release/kinetic/computer_status_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "69f402bd2ecc328385908e0142da03751096a9957d9dd4db41afd93e5298b81b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages definitions for representing computer's hardware state, such as battery information, GPU, some miscellaneous sensors. Format is in ROS. Originally developed at <a href="https://github.com/PR2/pr2_common/tree/e64f0362b7bff0f4d1d9916f805cf91ad561b439/pr2_msgs">pr2_common repository</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
