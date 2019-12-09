
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, controller-interface, hardware-interface, pluginlib, catkin, realtime-tools, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "97c1c877b5f1f3fd9377c0c1e8a8fb5ef9b2ab05957d3469d25300bb088e937e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs controller-interface hardware-interface pluginlib realtime-tools roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs controller-interface hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
