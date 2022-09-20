
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-boost-geometry-util";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/boost_geometry_util-release/archive/release/foxy/boost_geometry_util/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "d7ad6dcb6393aec4180fde2d45138d4f7d73798d1eccdb57973e116311b2e8a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-common ];
  propagatedBuildInputs = [ boost geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Utility library for boost geometry'';
    license = with lib.licenses; [ asl20 ];
  };
}
