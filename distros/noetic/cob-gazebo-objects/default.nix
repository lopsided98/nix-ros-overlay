
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-objects";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_objects/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "cc14a28cbd5d56aa628ae28ca01828721c627cbe8bcb6a6e9918fdd0fef3b840";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
