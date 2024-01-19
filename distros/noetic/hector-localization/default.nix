
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-pose-estimation, hector-pose-estimation-core, message-to-tf }:
buildRosPackage {
  pname = "ros-noetic-hector-localization";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/noetic/hector_localization/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "52d0f3a992929764e42fdd81bbe55db731b3df7d6ee55e15a516fd2d764fb31c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-pose-estimation hector-pose-estimation-core message-to-tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_localization stack is a collection of packages, that provide the full 6DOF pose of a robot or platform.
    It uses various sensor sources, which are fused using an Extended Kalman filter.

    Acceleration and angular rates from an inertial measurement unit (IMU) serve as primary measurements.
    The usage of other sensors is application-dependent. The hector_localization stack currently supports
    GPS, magnetometer, barometric pressure sensors and other external sources that provide a geometry_msgs/PoseWithCovariance
    message via the poseupdate topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
