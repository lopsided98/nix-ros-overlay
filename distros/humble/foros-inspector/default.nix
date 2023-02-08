
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, foros-msgs, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-humble-foros-inspector";
  version = "0.4.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "foros-release";
        rev = "release/humble/foros_inspector/0.4.1-2";
        sha256 = "sha256-WfePxLQcvtxpQxBIDPXuPTGMb87E/ySncvdid1KfFFk=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ foros-msgs ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail over ROS inspector'';
    license = with lib.licenses; [ asl20 ];
  };
}
