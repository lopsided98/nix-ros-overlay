
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-bringup, qb-device-control, qb-device-description, qb-device-driver, qb-device-gazebo, qb-device-hardware-interface, qb-device-msgs, qb-device-srvs, qb-device-utils }:
buildRosPackage {
  pname = "ros-noetic-qb-device";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "518d6f733ea9878424eaff30225ae04a6a48d65dd16d721d16d7ad0dc86be9ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-device-bringup qb-device-control qb-device-description qb-device-driver qb-device-gazebo qb-device-hardware-interface qb-device-msgs qb-device-srvs qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
