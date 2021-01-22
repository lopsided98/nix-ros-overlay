
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-migration-rule";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/kinetic/rosbag_migration_rule/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "8eed61c003fb4cf8aa30266e234f6a14e8fdff5f5ced9694e21c51d200507dda";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This empty package allows to export rosbag migration rule files without depending on rosbag.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
