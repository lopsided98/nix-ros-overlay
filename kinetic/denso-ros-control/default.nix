
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, kdl-parser, joint-limits-interface, catkin, joint-trajectory-controller, position-controllers, urdf, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-denso-ros-control";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/start-jsk/denso-release/archive/release/kinetic/denso_ros_control/2.0.3-0.tar.gz;
    sha256 = "31f59d360d6d8af9554d57d2f1fca0ef00977d250373f950603f1a48a1fea660";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller kdl-parser joint-limits-interface joint-trajectory-controller position-controllers urdf roscpp transmission-interface ];
  nativeBuildInputs = [ controller-manager hardware-interface joint-state-controller kdl-parser joint-limits-interface catkin joint-trajectory-controller position-controllers urdf roscpp transmission-interface ];

  meta = {
    description = ''The denso_ros_control package'';
    #license = lib.licenses.MIT;
  };
}
