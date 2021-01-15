
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, pythonPackages, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-cascaded-pid";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_cascaded_pid/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b0cfd7063925d62136d15db64e82d2eeb7c38de170b15018e163d6e68e55650b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs pythonPackages.numpy rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
