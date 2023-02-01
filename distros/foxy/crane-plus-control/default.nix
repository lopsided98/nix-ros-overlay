
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, ros2-controllers, ros2controlcli, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-control";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "crane_plus-release";
        rev = "release/foxy/crane_plus_control/1.1.0-1";
        sha256 = "sha256-yBTNlB9rhw8pLj+q0wGeiX8vcwdC8HBBBnE44kCYFJw=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description dynamixel-sdk hardware-interface pluginlib rclcpp ros2-controllers ros2controlcli xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
