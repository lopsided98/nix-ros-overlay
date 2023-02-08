
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-time }:
buildRosPackage {
  pname = "ros-melodic-kobuki-driver";
  version = "0.7.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "kobuki_core-release";
        rev = "release/melodic/kobuki_driver/0.7.12-1";
        sha256 = "sha256-d09KDqqPXd6jw3/dU6Y7aHSyv7xBhOJhwAY72amQGIM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-console ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ driver library for Kobuki:
    Pure C++ driver library for Kobuki. This is for those who do not wish to use ROS on their systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
