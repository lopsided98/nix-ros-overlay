
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, fzi-icl-comm, fzi-icl-core, roscpp, rospy, rqt-gui, rqt-gui-py, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-schunk-svh-driver";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/kinetic/schunk_svh_driver/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "454534ca0f2ab9dcaadac08692c0c972dcd737de3df41092ac28d0df03c2f7d8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure fzi-icl-comm fzi-icl-core roscpp rospy rqt-gui rqt-gui-py sensor-msgs std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SVH Driver wrapper to enable control of the Schunk five finger hand'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
