
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, moveit-msgs, polled-camera, pr2-arm-kinematics, pr2-common-action-msgs, pr2-controller-manager, pr2-controllers-msgs, pr2-mannequin-mode, pr2-mechanism-msgs, pr2-msgs, pr2-tuck-arms-action, ps3joy, roscpp, sensor-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-teleop-general";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_teleop_general/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "e3ae1cbc8602721113121e1546387c770995bf51dda293c8d593919c38ba9863";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs moveit-msgs polled-camera pr2-arm-kinematics pr2-common-action-msgs pr2-controller-manager pr2-controllers-msgs pr2-mannequin-mode pr2-mechanism-msgs pr2-msgs pr2-tuck-arms-action ps3joy roscpp sensor-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
