
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-rosbag-migration-rule";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/noetic/rosbag_migration_rule/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "4a014649acb782d64beee309a200e9043582ac3f27492568afe600873a2de41a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This empty package allows to export rosbag migration rule files without depending on rosbag.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
