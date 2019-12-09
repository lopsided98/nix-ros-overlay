
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tf, actionlib-msgs, pr2-common-action-msgs, sensor-msgs, pr2-mechanism-msgs, pr2-msgs, catkin, pr2-arm-kinematics, pr2-mannequin-mode, pr2-tuck-arms-action, ps3joy, roscpp, angles, actionlib, moveit-msgs, pr2-controllers-msgs, polled-camera, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-pr2-teleop-general";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_teleop_general/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "83d7700a17d7874588b9fa2a5d5f023d69a956881dbd9f5da968df07b32735cb";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs urdf pr2-msgs actionlib tf roscpp pr2-common-action-msgs actionlib-msgs moveit-msgs ps3joy angles pr2-controllers-msgs polled-camera pr2-controller-manager pr2-mechanism-msgs ];
  propagatedBuildInputs = [ geometry-msgs urdf tf actionlib-msgs pr2-common-action-msgs sensor-msgs pr2-mechanism-msgs pr2-msgs pr2-arm-kinematics pr2-mannequin-mode pr2-tuck-arms-action roscpp ps3joy angles actionlib moveit-msgs pr2-controllers-msgs polled-camera pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
