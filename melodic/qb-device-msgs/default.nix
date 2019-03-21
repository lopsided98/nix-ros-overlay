
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-qb-device-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_msgs/2.0.1-0.tar.gz;
    sha256 = "0a101007de0e30caec152ebe1d7f6bd676382b6b9df4e8353acb6a061bb57ab6";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''This package contains the device-independent custom ROS messages for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
