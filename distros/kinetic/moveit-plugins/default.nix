
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-moveit-plugins";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_plugins/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "5bf14d48bd28fa081e5300166b10c18ef739b93a6900f716c06656d0daf8be9b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for moveit plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
