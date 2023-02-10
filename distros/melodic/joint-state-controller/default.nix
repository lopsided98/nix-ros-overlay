
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "35648c8ae981f344b4c3977be8c87d428caf635b9acc208b80d18fcfec787c77";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
