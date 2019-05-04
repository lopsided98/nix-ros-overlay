
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-nav-msgs, tuw-geometry-msgs, tuw-airskin-msgs, tuw-vehicle-msgs, tuw-object-msgs, catkin, tuw-gazebo-msgs, tuw-multi-robot-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_msgs/0.0.11-0.tar.gz;
    sha256 = "04195ce402ac43acaad940aa7a3e34b20835eba420aa405f583bbb621f03f1ee";
  };

  propagatedBuildInputs = [ tuw-nav-msgs tuw-geometry-msgs tuw-object-msgs tuw-airskin-msgs tuw-vehicle-msgs tuw-gazebo-msgs tuw-multi-robot-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
