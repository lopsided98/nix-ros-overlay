
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-geometry-msgs";
  version = "0.13.13-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "geometry2-release";
        rev = "release/foxy/tf2_geometry_msgs/0.13.13-1";
        sha256 = "sha256-LrjVAWc0/Hepu+4OKC6CGMNq9ZHrDw/1A4slhE6XoTs=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
