
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-dwb-msgs";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dwb_msgs/0.2.5-0.tar.gz;
    sha256 = "b56a73c7f6edd8eb4899584d8bd452060a6a2148f97c9f739d27f79bf66cb233";
  };

  buildInputs = [ nav-msgs message-generation nav-2d-msgs geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
