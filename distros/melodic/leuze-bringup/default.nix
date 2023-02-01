
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-description, leuze-phidget-driver, leuze-rsl-driver, phidgets-ik, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-leuze-bringup";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa-led";
        repo = "leuze_ros_drivers-release";
        rev = "release/melodic/leuze_bringup/1.0.1-1";
        sha256 = "sha256-28ZrRc4n4BSB1ZYazjhDjqUpaXx1AlrRNL2+Wn+S07A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ leuze-description leuze-phidget-driver leuze-rsl-driver phidgets-ik robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains .'';
    license = with lib.licenses; [ asl20 ];
  };
}
