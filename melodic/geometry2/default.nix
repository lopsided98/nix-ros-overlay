
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-tools, tf2-msgs, tf2-geometry-msgs, catkin, tf2-kdl, tf2-ros, tf2-sensor-msgs, tf2, tf2-eigen, tf2-bullet, tf2-py }:
buildRosPackage {
  pname = "ros-melodic-geometry2";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/geometry2/0.6.5-0.tar.gz;
    sha256 = "077b18d3f1afdc72a99c3fb4e14168da26d82e4ae2e5b18ef90960e187209140";
  };

  propagatedBuildInputs = [ tf2-tools tf2-msgs tf2-geometry-msgs tf2-kdl tf2-ros tf2-sensor-msgs tf2 tf2-eigen tf2-bullet tf2-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
