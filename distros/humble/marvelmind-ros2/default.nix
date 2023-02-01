
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, marvelmind-ros2-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marvelmind-ros2";
  version = "1.0.3-r5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarvelmindRobotics";
        repo = "marvelmind_ros2_release_repo";
        rev = "release/humble/marvelmind_ros2/1.0.3-5";
        sha256 = "sha256-y3ZRvRsPpSKa+ONhSFIzX4WMfAGM/ovH9duWiEKTk0I=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml marvelmind-ros2-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Marvelmind ROS2 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
