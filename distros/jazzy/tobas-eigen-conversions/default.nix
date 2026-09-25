
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-conversions";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_conversions/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "7962224cae7a5df9fdb34e313629f42fbfcc83162ff07c8306a850247fb3f1d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between Eigen types and Tobas matrix and vector messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
