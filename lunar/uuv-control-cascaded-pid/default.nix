
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, nav-msgs, rospy, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-control-cascaded-pid";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_control_cascaded_pid/0.6.10-0.tar.gz;
    sha256 = "9919c2f74948dbb09c906c2a9b62140df8f03c0adb38fb863e6d4a6399b6eea0";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy nav-msgs rospy dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A cascade of PID controllers for acceleration, velocity, and position control.'';
    #license = lib.licenses.Apache-2.0;
  };
}
