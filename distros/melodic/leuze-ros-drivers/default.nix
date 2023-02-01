
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-bringup, leuze-description, leuze-msgs, leuze-phidget-driver, leuze-rsl-driver }:
buildRosPackage {
  pname = "ros-melodic-leuze-ros-drivers";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa-led";
        repo = "leuze_ros_drivers-release";
        rev = "release/melodic/leuze_ros_drivers/1.0.1-1";
        sha256 = "sha256-skrC3awiEfWbk4s6lD8HqmyZ+buYmW4mkCTjA6Y/UJ4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leuze-bringup leuze-description leuze-msgs leuze-phidget-driver leuze-rsl-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leuze_ros_drivers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
