
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, nav-msgs, rospy, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-cascaded-pid";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_cascaded_pid/0.6.10-0.tar.gz;
    sha256 = "9bf2099f61d216e49b6f784026d638f72cdca1d2308e223b7f3192209579bfcf";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy nav-msgs rospy dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
