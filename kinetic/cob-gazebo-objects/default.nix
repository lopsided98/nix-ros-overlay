
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roslaunch, catkin, cob-description }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-objects";
  version = "0.7.1-r2";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.7.1-2.tar.gz;
    sha256 = "b3813a5678b058f740d13df618edb416199c98c2202506322dab1ed5d1c79613";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros roslaunch cob-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
