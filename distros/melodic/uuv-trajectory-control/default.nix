
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, roslib, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-control-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-trajectory-control";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_trajectory_control/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "a20414665f3403e5ba772634d148eaef5bc2d703c4d5e5ff4196f8b6557bd3cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pyyaml pythonPackages.scipy roslib rospy std-msgs tf uuv-assistants uuv-control-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
