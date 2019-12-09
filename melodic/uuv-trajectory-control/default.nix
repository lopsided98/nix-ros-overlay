
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, uuv-assistants, tf, pythonPackages, catkin, rosunit, roslib, uuv-control-msgs, visualization-msgs, rospy, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-uuv-trajectory-control";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_trajectory_control/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "a20414665f3403e5ba772634d148eaef5bc2d703c4d5e5ff4196f8b6557bd3cd";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyyaml geometry-msgs pythonPackages.matplotlib pythonPackages.scipy std-msgs uuv-assistants tf roslib uuv-control-msgs visualization-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
