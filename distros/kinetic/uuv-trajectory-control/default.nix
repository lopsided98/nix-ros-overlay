
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, roslib, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-control-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-trajectory-control";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_trajectory_control/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "4047c075232c8a2978f498a43081dcc0f795f36ddee57d62d85326bc8f72fc6a";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pyyaml pythonPackages.scipy roslib rospy std-msgs tf uuv-assistants uuv-control-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
