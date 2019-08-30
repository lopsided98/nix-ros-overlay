
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, nav-msgs, rospy, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-cascaded-pid";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_control_cascaded_pid/0.6.13-0.tar.gz;
    sha256 = "dbf283b84f3ab21206873ec6a4423873ae696cd5e00d9ced11568cef4d0930be";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy nav-msgs rospy dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
