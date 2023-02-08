
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-common, foros-msgs, leveldb, rclcpp }:
buildRosPackage {
  pname = "ros-humble-foros";
  version = "0.4.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "foros-release";
        rev = "release/humble/foros/0.4.1-2";
        sha256 = "sha256-3MdLSjVHhSt+I/aMjeUl177ZcPCBGL84NQFFCx4YlP4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ foros-msgs leveldb rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail Over ROS framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
