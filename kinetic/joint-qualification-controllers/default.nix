
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, pr2-controller-interface, realtime-tools, control-toolbox, sensor-msgs, catkin, robot-mechanism-controllers, urdf, std-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-joint-qualification-controllers";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/joint_qualification_controllers/1.0.14-0.tar.gz;
    sha256 = "cddbf4dc7ffdd71bfcd9d2af88ffa2fd82fb1352fa9da7637980ec90aa665cd0";
  };

  buildInputs = [ pr2-hardware-interface pluginlib pr2-controller-interface realtime-tools control-toolbox sensor-msgs robot-mechanism-controllers urdf std-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-hardware-interface pluginlib pr2-controller-interface realtime-tools control-toolbox sensor-msgs robot-mechanism-controllers urdf std-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and for internal WG use.'';
    #license = lib.licenses.BSD;
  };
}
