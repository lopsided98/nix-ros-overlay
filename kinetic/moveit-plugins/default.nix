
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-simple-controller-manager, moveit-ros-control-interface, catkin, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-moveit-plugins";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_plugins/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "97be072c552e9928d371e0e0794643f1c03d5a991ed473d4907152c216ad1b88";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-simple-controller-manager moveit-ros-control-interface moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for moveit plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
