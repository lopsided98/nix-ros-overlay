
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy }:
buildRosPackage {
  pname = "ros-noetic-timed-roslaunch";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Tiryoh/timed_roslaunch-release/archive/release/noetic/timed_roslaunch/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "dd6c9f8915719ae4208645d57551085c86902c9abac372694f91881ff715a992";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Script to delay the launch of a roslaunch file";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
