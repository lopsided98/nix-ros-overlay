
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-bringup, qb-device-control, qb-device-description, qb-device-driver, qb-device-gazebo, qb-device-hardware-interface, qb-device-msgs, qb-device-srvs, qb-device-utils }:
buildRosPackage {
  pname = "ros-melodic-qb-device";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "536c46cf7cfffb792c66af7ef6730bba94ae10487c9ff72ddf7f6fa77d143bc9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-bringup qb-device-control qb-device-description qb-device-driver qb-device-gazebo qb-device-hardware-interface qb-device-msgs qb-device-srvs qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
