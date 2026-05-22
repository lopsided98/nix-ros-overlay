
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-core";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_core/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "e4cb4182081b4b89b167afe03970692ad53298c29704c068a7836c1a7c5501f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Pure C++ UKF sensor fusion library underlying FusionCore. Fuses IMU, wheel encoders, GPS, and visual SLAM pose in a 22-state unscented Kalman filter. Includes ECEF GPS conversion, IMU bias estimation, adaptive noise covariance, chi-squared outlier gating, ZUPT, and GPS-denied operation. No ROS dependency, usable standalone.";
    license = with lib.licenses; [ asl20 ];
  };
}
