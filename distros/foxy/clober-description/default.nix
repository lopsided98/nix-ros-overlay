
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf }:
buildRosPackage {
  pname = "ros-foxy-clober-description";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_description/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "0b710147a487951b92f552e85cfc7c5e2d07063309df208a0765a13c4ca4ca9e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
