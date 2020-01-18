
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-objects";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/melodic/cob_gazebo_objects/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "b78c2a7a852146004e0862598428506a8b39d905be38211a269f28dcb1f3a7f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
