
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, nav-msgs, dynamic-reconfigure, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-cascaded-pid";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_control_cascaded_pid/0.6.10-0.tar.gz;
    sha256 = "3d75578e17e9f0a19fdffea6ba51a69e0d066fdc8fae96cf88672466e69bdd21";
  };

  propagatedBuildInputs = [ pythonPackages.numpy nav-msgs rospy dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin dynamic-reconfigure ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    #license = lib.licenses.Apache-2.0;
  };
}
