
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-rosbag-migration-rule";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/noetic/rosbag_migration_rule/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c3b1cf23e3470dd151c3422f0f26e3f364cfcb5ab36b5d7a027fbea7f8ea5ffc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This empty package allows to export rosbag migration rule files without depending on rosbag.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
