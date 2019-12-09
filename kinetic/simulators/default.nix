
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros-pkgs, robot, stage-ros, rqt-common-plugins, catkin, rqt-robot-plugins }:
buildRosPackage {
  pname = "ros-kinetic-simulators";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/simulators/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "bf590a253108bd3d92ebc59ce7c8036062904ae7e455cc5baff471558dd35e26";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros-pkgs robot stage-ros rqt-common-plugins rqt-robot-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
