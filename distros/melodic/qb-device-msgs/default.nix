
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-device-msgs";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_msgs/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "a63d3ea20ccf397ab3436495b3ef35a09e3fc0cd22b8593b2c54ba7c9581b063";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS messages for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
