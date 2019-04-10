
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-std-capabilities";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/std_capabilities-release/archive/release/lunar/std_capabilities/0.1.0-0.tar.gz;
    sha256 = "a115a69db24ad2f39d126ace6833d2fd70c13eb6669175823cc4619a6afa3314";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains standard capability interfaces, which describe common robot capabilities in terms of ROS concepts such as topics, services, actions, and parameters.'';
    #license = lib.licenses.BSD;
  };
}
