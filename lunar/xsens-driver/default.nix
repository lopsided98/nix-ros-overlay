
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, rospy, std-msgs, diagnostic-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-xsens-driver";
  version = "2.2.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/ethzasl_xsens_driver-release/archive/release/lunar/xsens_driver/2.2.2-0.tar.gz;
    sha256 = "b996ecadba164ace181c2945e9a288148dcd92121a092076c84037d13ca28942";
  };

  buildInputs = [ sensor-msgs rospy std-msgs diagnostic-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ pythonPackages.pyserial sensor-msgs rospy std-msgs diagnostic-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Driver for XSens MT/MTi/MTi-G devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
