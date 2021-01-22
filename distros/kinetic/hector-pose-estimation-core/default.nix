
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geographic-msgs, geometry-msgs, nav-msgs, rosconsole, roscpp, rostime, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-pose-estimation-core";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_pose_estimation_core/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "916a0df99a333a3c698e8c718fa05fcebe38a882e6cc7b0353781e806bdc04e3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geographic-msgs geometry-msgs nav-msgs rosconsole roscpp rostime sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation_core is the core package of the hector_localization stack. It contains the Extended Kalman Filter (EKF)
    that estimates the 6DOF pose of the robot. hector_pose_estimation can be used either as a library, as a nodelet or as a standalone node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
