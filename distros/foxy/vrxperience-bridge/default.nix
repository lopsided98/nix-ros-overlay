
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cyclonedds, launch-xml, openjdk, rclcpp, rclcpp-components, tf2, vrxperience-msgs }:
buildRosPackage {
  pname = "ros-foxy-vrxperience-bridge";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autowarefoundation";
        repo = "ansys-vrxperience-ros2-release";
        rev = "release/foxy/vrxperience_bridge/1.0.0-1";
        sha256 = "sha256-PrqKCR6ItXT98llw8r0auWbSikqQchwfGBtZ4Ghseg0=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto openjdk ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds launch-xml rclcpp rclcpp-components tf2 vrxperience-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Bridge between the simulator and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
