
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-humble-rqt-gui-py";
  version = "1.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rqt-release";
        rev = "release/humble/rqt_gui_py/1.1.4-1";
        sha256 = "sha256-jP7e9GNl8xCGWMizCSL/aj+9Zvem9F+8kHcyKOCuE/I=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
