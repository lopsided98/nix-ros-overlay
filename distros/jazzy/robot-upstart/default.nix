
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-robot-upstart";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/jazzy/robot_upstart/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "645154d52fc05f3754f71c6e3ea89c519b2eea8d250bf9df126f540c14619cc6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python ];

  meta = {
    description = "The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
