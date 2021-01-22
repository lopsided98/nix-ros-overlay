
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, moveit-msgs, polled-camera, pr2-arm-kinematics, pr2-common-action-msgs, pr2-controller-manager, pr2-controllers-msgs, pr2-mannequin-mode, pr2-mechanism-msgs, pr2-msgs, pr2-tuck-arms-action, ps3joy, roscpp, sensor-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-teleop-general";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_teleop_general/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "83d7700a17d7874588b9fa2a5d5f023d69a956881dbd9f5da968df07b32735cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs moveit-msgs polled-camera pr2-arm-kinematics pr2-common-action-msgs pr2-controller-manager pr2-controllers-msgs pr2-mannequin-mode pr2-mechanism-msgs pr2-msgs pr2-tuck-arms-action ps3joy roscpp sensor-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
