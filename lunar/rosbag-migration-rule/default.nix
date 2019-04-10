
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-rosbag-migration-rule";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/lunar/rosbag_migration_rule/1.0.0-0.tar.gz;
    sha256 = "e8d4349799d318a8f5ec8ebe01852e06aeb31125a2d57e2c12b1e5aff926c404";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This empty package allows to export rosbag migration rule files without depending on rosbag.'';
    #license = lib.licenses.BSD;
  };
}
