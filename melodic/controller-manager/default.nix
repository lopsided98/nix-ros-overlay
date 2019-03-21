
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, catkin, rostest, controller-interface, controller-manager-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager/0.15.1-0.tar.gz;
    sha256 = "23c70277cc132ceacb08eaea3ce9ff79d956458f817b9ab72bcf2713b12e7824";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface controller-interface controller-manager-msgs pluginlib ];
  nativeBuildInputs = [ hardware-interface controller-interface controller-manager-msgs pluginlib catkin ];

  meta = {
    description = ''The controller manager.'';
    #license = lib.licenses.BSD;
  };
}
