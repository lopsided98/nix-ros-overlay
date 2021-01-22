
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, armadillo, catkin, control-msgs, geometry-msgs, katana-msgs, kni, moveit-msgs, roscpp, roslib, sensor-msgs, std-srvs, tf, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-katana";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "040323dee998fc110e0dd8f4016a267e8a12dfd829c7db09d280d258581fcb14";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib armadillo control-msgs geometry-msgs katana-msgs kni moveit-msgs roscpp roslib sensor-msgs std-srvs tf trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS interfaces to the Neuronics Katana 450 arm.
    It wraps the <a href="/wiki/kni">KNI</a> library for low-level communication
    with the Katana arm.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
