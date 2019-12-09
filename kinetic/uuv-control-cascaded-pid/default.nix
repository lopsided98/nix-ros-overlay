
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, pythonPackages, tf, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-cascaded-pid";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_cascaded_pid/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b0cfd7063925d62136d15db64e82d2eeb7c38de170b15018e163d6e68e55650b";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs dynamic-reconfigure tf rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
