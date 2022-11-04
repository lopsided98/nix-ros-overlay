
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosbag-migration-rule";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/melodic/rosbag_migration_rule/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "985744e58043e42585c195d72c7f8c0a265b646ca9dbfdf7d67d4488ed2a2a11";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This empty package allows to export rosbag migration rule files without depending on rosbag.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
