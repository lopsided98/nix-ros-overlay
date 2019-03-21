
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosserial-msgs, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-python";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_python/0.8.0-0.tar.gz;
    sha256 = "dc7ee1151a0b5b2dea4b0987e98c0296b67bfc4addb31ae70e14f33e18dd02c2";
  };

  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.pyserial rosserial-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python-based implementation of the rosserial protocol.'';
    #license = lib.licenses.BSD;
  };
}
