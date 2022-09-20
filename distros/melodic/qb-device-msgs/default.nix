
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-device-msgs";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_msgs/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "d896687c1b065050953830cc34e9bbf05a1ab454985700425560a3f06b948aa8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS messages for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
