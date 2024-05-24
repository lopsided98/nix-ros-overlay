
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_state_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "ba2c77d2d7b7d38d99f728e8609a245912c54a28578dd6907158eb966731ae7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Controller to publish joint state";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
