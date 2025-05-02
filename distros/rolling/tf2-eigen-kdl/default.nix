
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-eigen-kdl";
  version = "0.42.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_eigen_kdl/0.42.0-1.tar.gz";
    name = "0.42.0-1.tar.gz";
    sha256 = "d7b770701f48912a86806ba47601c69b0bfd5a61259f196b4e561cf6e40cbfef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen orocos-kdl-vendor tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions between:
      - Eigen and KDL";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
