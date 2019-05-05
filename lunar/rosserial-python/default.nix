
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosserial-msgs, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosserial-python";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_python/0.7.7-0.tar.gz;
    sha256 = "5d7805b0b0cb9300c0a1e9f2aaefd0cafcbb0aed147ffd1e495219eb3b447975";
  };

  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.pyserial rosserial-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python-based implementation of the rosserial protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
