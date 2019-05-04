
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_msgs/2.0.1-0.tar.gz;
    sha256 = "61273c6308e3dfea80c0208cb3e2cc72136a63de921dd837155b32a09a31d4e9";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS messages for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
