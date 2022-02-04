
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, interactive-marker-twist-server, joint-state-controller, joy, nav-msgs, realtime-tools, robot-localization, roslaunch, teleop-twist-joy, tf, topic-tools, urdf }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-control";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_control/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "0332e62492bba9f6db8b7fa9b17800917d9cc147939a3af1a56d3d575c0cee99";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager interactive-marker-twist-server joint-state-controller joy nav-msgs realtime-tools robot-localization teleop-twist-joy tf topic-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
