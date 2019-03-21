
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, polled-camera, actionlib, tf, geometry-msgs, pr2-controller-manager, angles, pr2-msgs, pr2-controllers-msgs, pr2-mechanism-msgs, ps3joy, pr2-common-action-msgs, catkin, urdf, moveit-msgs, roscpp, pr2-arm-kinematics, sensor-msgs, pr2-mannequin-mode, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-teleop-general";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_teleop_general/0.6.1-0.tar.gz;
    sha256 = "e3ae1cbc8602721113121e1546387c770995bf51dda293c8d593919c38ba9863";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs ps3joy actionlib-msgs pr2-common-action-msgs polled-camera urdf actionlib moveit-msgs roscpp tf pr2-arm-kinematics geometry-msgs sensor-msgs pr2-mannequin-mode pr2-msgs pr2-controller-manager angles pr2-tuck-arms-action ];
  nativeBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs ps3joy angles actionlib-msgs pr2-common-action-msgs sensor-msgs catkin polled-camera roscpp pr2-controller-manager urdf actionlib moveit-msgs pr2-msgs tf geometry-msgs ];

  meta = {
    description = ''pr2_teleop_general'';
    #license = lib.licenses.BSD;
  };
}
