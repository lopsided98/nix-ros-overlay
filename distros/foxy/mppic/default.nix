
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, nav2-bringup, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-mppic";
  version = "0.2.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "artofnothingness";
        repo = "mppic-release";
        rev = "release/foxy/mppic/0.2.1-2";
        sha256 = "sha256-KSZDHAVRckwJAUOjgUaZ+bgclvest8CyXu9+57/2hnQ=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs nav2-bringup nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''mppic'';
    license = with lib.licenses; [ mit ];
  };
}
