
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-kalman-filter";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/lunar/kalman_filter/0.2.4-0.tar.gz;
    sha256 = "5965ff307596906324e87f9d6b588e375567ca83ddff81eeb06ad8d4a8134bce";
  };

  buildInputs = [ rospy ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
