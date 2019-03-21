
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, husky-description, robot-localization, multimaster-launch, robot-state-publisher, interactive-marker-twist-server, rostopic, teleop-twist-joy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-control";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_control/0.3.2-0.tar.gz;
    sha256 = "33234b9db22f766e0824cc06f812cfca7f59e4a31ea69dd9443e58634d43f2b3";
  };

  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy joint-trajectory-controller husky-description robot-localization multimaster-launch robot-state-publisher interactive-marker-twist-server rostopic teleop-twist-joy ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    #license = lib.licenses.BSD;
  };
}
