
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-common-msgs";
  version = "0.5.3-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rc_common_msgs_ros2-release";
        rev = "release/rolling/rc_common_msgs/0.5.3-3";
        sha256 = "sha256-/ApqcAoxtUu0eHcF5gxxFhroOIdz457iCAONfAC2xxQ=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS2 packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
