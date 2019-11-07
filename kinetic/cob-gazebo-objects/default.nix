
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roslaunch, catkin, cob-description }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-objects";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f9c72bb82eedf5ea56d182edd8fd39bf03bdcfed09b58ab044103fd1152220a7";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros roslaunch cob-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
