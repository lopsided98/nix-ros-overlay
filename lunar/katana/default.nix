
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, armadillo, control-msgs, katana-msgs, trajectory-msgs, sensor-msgs, catkin, roscpp, roslib, kni, urdf, actionlib, moveit-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-katana";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana/1.1.2-0.tar.gz;
    sha256 = "dea80c6a08604ad538fca5226a3e083d0b68542199affcb586a2dd43f113f389";
  };

  buildInputs = [ std-srvs armadillo control-msgs katana-msgs trajectory-msgs sensor-msgs roscpp roslib kni urdf actionlib moveit-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs armadillo control-msgs katana-msgs trajectory-msgs sensor-msgs roscpp roslib kni urdf actionlib moveit-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS interfaces to the Neuronics Katana 450 arm.
    It wraps the <a href="/wiki/kni">KNI</a> library for low-level communication
    with the Katana arm.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
