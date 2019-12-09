
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, controller-manager, hardware-interface, urdf, position-controllers, catkin, transmission-interface, roscpp, joint-trajectory-controller, joint-state-controller, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-denso-ros-control";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/start-jsk/denso-release/archive/release/kinetic/denso_ros_control/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "31f59d360d6d8af9554d57d2f1fca0ef00977d250373f950603f1a48a1fea660";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager urdf hardware-interface joint-limits-interface position-controllers transmission-interface roscpp joint-trajectory-controller joint-state-controller kdl-parser ];
  propagatedBuildInputs = [ controller-manager urdf hardware-interface joint-limits-interface position-controllers transmission-interface roscpp joint-trajectory-controller joint-state-controller kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso_ros_control package'';
    license = with lib.licenses; [ mit ];
  };
}
