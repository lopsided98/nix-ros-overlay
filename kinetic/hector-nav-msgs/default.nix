
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, catkin, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-nav-msgs";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_nav_msgs/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "8e319c05ff7432afa5a87f5d9d03312b95df648c9cd570058e65c43dfe716aea";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs message-generation nav-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_nav_msgs contains messages and services used in the hector_slam stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
