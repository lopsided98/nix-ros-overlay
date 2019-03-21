
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, rospy, std-msgs, diagnostic-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xsens-driver";
  version = "2.2.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/ethzasl_xsens_driver-release/archive/release/kinetic/xsens_driver/2.2.2-0.tar.gz;
    sha256 = "2f5757ac831bc2ad82cbcc34b650966dac084b5531910e1d00d2185957bc467c";
  };

  propagatedBuildInputs = [ pythonPackages.pyserial rospy std-msgs diagnostic-msgs sensor-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin rospy std-msgs diagnostic-msgs sensor-msgs tf geometry-msgs ];

  meta = {
    description = ''ROS Driver for XSens MT/MTi/MTi-G devices.'';
    #license = lib.licenses.BSD;
  };
}
