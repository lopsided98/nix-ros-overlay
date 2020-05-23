
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-bullet, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-noetic-geometry2";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/geometry2/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "66592d019ee1d562349ad4d89bf8971254e871492164623a93fd141c7fa832da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf2 tf2-bullet tf2-eigen tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs tf2-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
