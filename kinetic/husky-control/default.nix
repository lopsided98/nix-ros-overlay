
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, husky-description, robot-localization, multimaster-launch, robot-state-publisher, interactive-marker-twist-server, rostopic, teleop-twist-joy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-control";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_control/0.3.3-0.tar.gz;
    sha256 = "f4bf9fd0c8a2fded1276e7908a44bd2343a46e554dd5663e3079d5a68baf5b3a";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy joint-trajectory-controller husky-description robot-localization multimaster-launch robot-state-publisher interactive-marker-twist-server rostopic teleop-twist-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    #license = lib.licenses.BSD;
  };
}
