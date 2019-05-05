
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, roslib, nav-msgs, visualization-msgs, rospy, std-msgs, tf, uuv-control-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-trajectory-control";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_trajectory_control/0.6.10-0.tar.gz;
    sha256 = "c95a4c05a8153aa31ff4fd776507b3a0dd45fc89fbf290c12a06e7d943ba8978";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.scipy pythonPackages.pyyaml roslib nav-msgs visualization-msgs rospy std-msgs tf uuv-control-msgs pythonPackages.matplotlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
