
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-pose-estimation, hector-pose-estimation-core, message-to-tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-localization";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_localization/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "e1f772dd62ec1624172c4485d270fb3d92416c5e75af019b61ed6205166abf92";
  };

  buildType = "catkin";
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
