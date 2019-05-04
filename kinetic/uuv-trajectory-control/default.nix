
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, roslib, nav-msgs, visualization-msgs, rospy, std-msgs, tf, uuv-control-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-trajectory-control";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_trajectory_control/0.6.10-0.tar.gz;
    sha256 = "55039cf78d14ecd3f97240a4812e5c3a52abe3c2431d96a512d672ee9745cf5b";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.scipy pythonPackages.pyyaml roslib nav-msgs visualization-msgs rospy std-msgs tf uuv-control-msgs pythonPackages.matplotlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
