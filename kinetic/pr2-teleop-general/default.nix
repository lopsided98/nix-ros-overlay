
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, polled-camera, actionlib, tf, geometry-msgs, pr2-controller-manager, angles, pr2-msgs, pr2-controllers-msgs, pr2-mechanism-msgs, ps3joy, pr2-common-action-msgs, catkin, urdf, moveit-msgs, roscpp, pr2-arm-kinematics, sensor-msgs, pr2-mannequin-mode, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-kinetic-pr2-teleop-general";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_teleop_general/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "83d7700a17d7874588b9fa2a5d5f023d69a956881dbd9f5da968df07b32735cb";
  };

  buildType = "catkin";
  buildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs ps3joy angles actionlib-msgs pr2-common-action-msgs sensor-msgs polled-camera roscpp pr2-controller-manager urdf actionlib moveit-msgs pr2-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs polled-camera actionlib tf geometry-msgs pr2-controller-manager angles pr2-msgs pr2-controllers-msgs pr2-mechanism-msgs ps3joy pr2-common-action-msgs urdf moveit-msgs roscpp pr2-arm-kinematics sensor-msgs pr2-mannequin-mode pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
