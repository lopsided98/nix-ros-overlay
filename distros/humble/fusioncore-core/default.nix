
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-fusioncore-core";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_core/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "f5ddcba1488f89b199049bca28887ca009ee3c74fa0dd0d7f3ca3b45629038c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Pure C++ UKF sensor fusion library underlying FusionCore. Fuses IMU, wheel encoders and GPS in a 22-state unscented Kalman filter. Includes ECEF GPS conversion, IMU bias estimation, adaptive noise covariance, chi-squared outlier gating, and ZUPT. No ROS dependency, usable standalone.";
    license = with lib.licenses; [ asl20 ];
  };
}
