
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, fzi-icl-core, fzi-icl-comm, sensor-msgs, rqt-gui, catkin, urdf, rospy, std-msgs, dynamic-reconfigure, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-schunk-svh-driver";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/kinetic/schunk_svh_driver/0.2.0-0.tar.gz;
    sha256 = "454534ca0f2ab9dcaadac08692c0c972dcd737de3df41092ac28d0df03c2f7d8";
  };

  propagatedBuildInputs = [ rqt-gui-py fzi-icl-core fzi-icl-comm sensor-msgs rqt-gui rospy urdf dynamic-reconfigure std-msgs roscpp xacro ];
  nativeBuildInputs = [ rqt-gui-py fzi-icl-core fzi-icl-comm sensor-msgs rqt-gui catkin rospy urdf dynamic-reconfigure std-msgs roscpp xacro ];

  meta = {
    description = ''SVH Driver wrapper to enable control of the Schunk five finger hand'';
    #license = lib.licenses.LGPL;
  };
}
