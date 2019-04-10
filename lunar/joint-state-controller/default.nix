
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, rostest, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-lunar-joint-state-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/joint_state_controller/0.13.4-0.tar.gz;
    sha256 = "cd508668a9c3dd095427db1d0766d6a76adcbc4c3347d24994318ba004f3ebcc";
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
