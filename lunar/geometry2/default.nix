
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-tools, tf2-msgs, tf2-geometry-msgs, catkin, tf2-kdl, tf2-ros, tf2-sensor-msgs, tf2, tf2-eigen, tf2-bullet, tf2-py }:
buildRosPackage {
  pname = "ros-lunar-geometry2";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/geometry2/0.5.20-0.tar.gz;
    sha256 = "e56ddba81271e10caf3f8a6a729156c38772d220f22e6ee5f57b9d7a3d52e1a3";
  };

  propagatedBuildInputs = [ tf2-tools tf2-msgs tf2-geometry-msgs tf2-kdl tf2-ros tf2-sensor-msgs tf2 tf2-eigen tf2-bullet tf2-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    #license = lib.licenses.BSD;
  };
}
