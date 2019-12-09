
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, diagnostic-msgs, std-msgs, tf, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-xsens-driver";
  version = "2.2.2";

  src = fetchurl {
    url = "https://github.com/ethz-asl/ethzasl_xsens_driver-release/archive/release/melodic/xsens_driver/2.2.2-0.tar.gz";
    name = "2.2.2-0.tar.gz";
    sha256 = "bf0a13bb4fd0e2891ca1f6b18c1d8bb071f8eb2446a07ee31abb850d821da693";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs geometry-msgs std-msgs tf rospy ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-msgs geometry-msgs std-msgs tf pythonPackages.pyserial rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Driver for XSens MT/MTi/MTi-G devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
