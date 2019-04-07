
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, rostest, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.15.0-0.tar.gz;
    sha256 = "97c1c877b5f1f3fd9377c0c1e8a8fb5ef9b2ab05957d3469d25300bb088e937e";
  };

  buildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    #license = lib.licenses.BSD;
  };
}
