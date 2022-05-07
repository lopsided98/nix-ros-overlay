
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-objects";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_objects/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "f9ebb9e972375cabb72ebd0b075ba0c58e102d0415fbd042ed761a6874726dc2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
