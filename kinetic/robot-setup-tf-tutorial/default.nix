
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-setup-tf-tutorial";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/robot_setup_tf_tutorial/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "5e8bce1de150bf3b0330c2fc4637d9a216d2622419ca64a417f1c21197330303";
  };

  buildType = "catkin";
  buildInputs = [ tf geometry-msgs roscpp ];
  propagatedBuildInputs = [ tf geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_setup_tf_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
