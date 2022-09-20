
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-nav-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_nav_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d13b74403ab5af03a0c127c92549a0aacc23d69fa968f69557dab5e4d99bc875";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_nav_msgs contains messages and services used in the hector_slam stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
