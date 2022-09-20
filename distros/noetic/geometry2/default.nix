
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-bullet, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-noetic-geometry2";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/geometry2/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "48d06f9c8f8f91abe36fe83a0e5c49f081a0c5e44ea1ad921a6d07ca848b0045";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tf2 tf2-bullet tf2-eigen tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs tf2-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
