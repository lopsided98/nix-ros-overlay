
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, pr2-hardware-interface, pluginlib, pr2-description, pr2-controller-interface, cmake-modules, pr2-mechanism-diagnostics, realtime-tools, catkin, rosparam, sensor-msgs, rostest, rospy, diagnostic-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-controller-manager";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_controller_manager/1.8.18-0.tar.gz;
    sha256 = "b8c00259af30026fbef6c1651f3b95332e5aab3922fbc66ed109515613d68da4";
  };

  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib pr2-controller-interface pr2-description pr2-mechanism-diagnostics realtime-tools rosparam sensor-msgs rospy diagnostic-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib cmake-modules pr2-controller-interface pr2-mechanism-diagnostics realtime-tools sensor-msgs pr2-description catkin rostest diagnostic-msgs roscpp pr2-mechanism-model ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    #license = lib.licenses.BSD;
  };
}
