
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qwt-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/qwt_dependency-release/archive/release/lunar/qwt_dependency/1.1.0-0.tar.gz;
    sha256 = "c7472d2714626ad66217e1f83c9633d931f11384bf0993f5303b902e832adb9d";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the Qwt dependency for a specific ROS distribution and its Qt version'';
    #license = lib.licenses.BSD;
  };
}
