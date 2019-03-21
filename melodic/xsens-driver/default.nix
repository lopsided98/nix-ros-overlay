
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, rospy, std-msgs, diagnostic-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-xsens-driver";
  version = "2.2.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/ethzasl_xsens_driver-release/archive/release/melodic/xsens_driver/2.2.2-0.tar.gz;
    sha256 = "bf0a13bb4fd0e2891ca1f6b18c1d8bb071f8eb2446a07ee31abb850d821da693";
  };

  propagatedBuildInputs = [ pythonPackages.pyserial rospy std-msgs diagnostic-msgs sensor-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin rospy std-msgs diagnostic-msgs sensor-msgs tf geometry-msgs ];

  meta = {
    description = ''ROS Driver for XSens MT/MTi/MTi-G devices.'';
    #license = lib.licenses.BSD;
  };
}
