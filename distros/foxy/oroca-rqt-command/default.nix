
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-oroca-rqt-command";
  version = "0.6.0-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "oroca-release";
        repo = "oroca_rqt_command-release";
        rev = "release/foxy/oroca_rqt_command/0.6.0-3";
        sha256 = "sha256-oE4mJcND4qoRqL+5PmzNvEMHfQIeEV95MYlNRoqxVTc=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding python3Packages.catkin-pkg qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 example for RQt plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
