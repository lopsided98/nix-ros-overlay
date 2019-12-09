
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, pr2-mechanism-model, diagnostic-msgs, pr2-description, pluginlib, pr2-mechanism-diagnostics, catkin, cmake-modules, rosparam, pr2-controller-interface, realtime-tools, roscpp, pr2-hardware-interface, rospy, rostest, pr2-mechanism-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-controller-manager";
  version = "1.8.18";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_controller_manager/1.8.18-0.tar.gz";
    name = "1.8.18-0.tar.gz";
    sha256 = "b8c00259af30026fbef6c1651f3b95332e5aab3922fbc66ed109515613d68da4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs pr2-mechanism-model diagnostic-msgs pr2-description pluginlib pr2-mechanism-diagnostics cmake-modules pr2-controller-interface realtime-tools roscpp pr2-hardware-interface rostest pr2-mechanism-msgs ];
  propagatedBuildInputs = [ sensor-msgs pr2-mechanism-model diagnostic-msgs pr2-description pluginlib pr2-mechanism-diagnostics rosparam pr2-controller-interface realtime-tools roscpp pr2-hardware-interface rospy pr2-mechanism-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
