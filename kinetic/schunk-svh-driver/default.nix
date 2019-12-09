
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fzi-icl-comm, rqt-gui, sensor-msgs, xacro, fzi-icl-core, urdf, dynamic-reconfigure, std-msgs, catkin, rqt-gui-py, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-schunk-svh-driver";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/kinetic/schunk_svh_driver/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "454534ca0f2ab9dcaadac08692c0c972dcd737de3df41092ac28d0df03c2f7d8";
  };

  buildType = "catkin";
  buildInputs = [ fzi-icl-comm rqt-gui sensor-msgs xacro fzi-icl-core urdf dynamic-reconfigure std-msgs rqt-gui-py roscpp rospy ];
  propagatedBuildInputs = [ fzi-icl-comm rqt-gui sensor-msgs xacro fzi-icl-core urdf dynamic-reconfigure std-msgs rqt-gui-py roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SVH Driver wrapper to enable control of the Schunk five finger hand'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
