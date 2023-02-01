
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, rclcpp, ros2-socketcan }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-common";
  version = "2.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dbw_ros-release";
        rev = "release/humble/dataspeed_dbw_common/2.1.1-1";
        sha256 = "sha256-Z4/KJ3bNlIn2nsZ9lgY14Mmv7rjApkIBwytt83JDNUM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp ros2-socketcan ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common interfaces for drive-by-wire.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
