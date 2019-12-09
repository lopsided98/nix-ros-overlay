
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, uuv-assistants, tf, pythonPackages, catkin, rosunit, roslib, uuv-control-msgs, visualization-msgs, rospy, nav-msgs, rostest }:
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
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyyaml geometry-msgs pythonPackages.matplotlib pythonPackages.scipy std-msgs uuv-assistants tf roslib uuv-control-msgs visualization-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
