
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, filters, grid-map-cmake-helpers, grid-map-core, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-grid-map-cv";
  version = "2.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "grid_map-release";
        rev = "release/humble/grid_map_cv/2.0.0-1";
        sha256 = "sha256-NnSg1dMyvqKLJ8oiYWFH2X54sL8YmHGD47D67jXsr24=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge filters grid-map-core pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
