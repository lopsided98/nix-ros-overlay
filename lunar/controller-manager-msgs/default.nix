
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-controller-manager-msgs";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/controller_manager_msgs/0.13.3-0.tar.gz;
    sha256 = "2c85cc54621a4486ccdeb75d6c6e575a42485efbddebaa14803333524eced84b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
