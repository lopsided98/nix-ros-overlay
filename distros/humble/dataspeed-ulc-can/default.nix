
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-dbw-common, dataspeed-ulc-msgs, geometry-msgs, rclcpp, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc-can";
  version = "2.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dbw_ros-release";
        rev = "release/humble/dataspeed_ulc_can/2.1.1-1";
        sha256 = "sha256-YKbXPFHFAlOT2shKvtsTqSUNVW4KkioMLDy78iU6h4c=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ros-testing ];
  propagatedBuildInputs = [ can-msgs dataspeed-dbw-common dataspeed-ulc-msgs geometry-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
