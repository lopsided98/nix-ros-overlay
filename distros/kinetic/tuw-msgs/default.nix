
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tuw-airskin-msgs, tuw-gazebo-msgs, tuw-geometry-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-msgs, tuw-vehicle-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_msgs/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "04195ce402ac43acaad940aa7a3e34b20835eba420aa405f583bbb621f03f1ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tuw-airskin-msgs tuw-gazebo-msgs tuw-geometry-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-msgs tuw-vehicle-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
