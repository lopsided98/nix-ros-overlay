
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, moveit-msgs, polled-camera, pr2-arm-kinematics, pr2-common-action-msgs, pr2-controller-manager, pr2-controllers-msgs, pr2-mannequin-mode, pr2-mechanism-msgs, pr2-msgs, pr2-tuck-arms-action, ps3joy, roscpp, roslaunch, rostest, sensor-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-noetic-pr2-teleop-general";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_teleop_general/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "e1004b636c684d5023ce8abec3ccd72f7c95b7b5a249bb5b1ea391c253dfe049";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs moveit-msgs polled-camera pr2-arm-kinematics pr2-common-action-msgs pr2-controller-manager pr2-controllers-msgs pr2-mannequin-mode pr2-mechanism-msgs pr2-msgs pr2-tuck-arms-action ps3joy roscpp sensor-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
