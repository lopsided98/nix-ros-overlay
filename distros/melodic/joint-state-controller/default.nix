
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "da9b75221b8225a5a792549a307cbd4eaa56fe242788d3abb432f269e12c740a";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
