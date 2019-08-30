
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, husky-description, robot-localization, multimaster-launch, robot-state-publisher, interactive-marker-twist-server, rostopic, teleop-twist-joy, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-control";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_control/0.4.0-1.tar.gz;
    sha256 = "8e9cb9fbd191a4cfd6985645d0bb887068da8a93f45d11efd76627afeb5a80ef";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy joint-trajectory-controller husky-description robot-localization multimaster-launch robot-state-publisher interactive-marker-twist-server rostopic teleop-twist-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
