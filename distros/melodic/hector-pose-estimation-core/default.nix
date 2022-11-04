
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geographic-msgs, geometry-msgs, nav-msgs, rosconsole, roscpp, rostime, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-pose-estimation-core";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/melodic/hector_pose_estimation_core/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "1114f90fbc18355cb0737a76598ff3f6b95bafc98ea780b79010446d37c7ae5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen geographic-msgs geometry-msgs nav-msgs rosconsole roscpp rostime sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation_core is the core package of the hector_localization stack. It contains the Extended Kalman Filter (EKF)
    that estimates the 6DOF pose of the robot. hector_pose_estimation can be used either as a library, as a nodelet or as a standalone node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
