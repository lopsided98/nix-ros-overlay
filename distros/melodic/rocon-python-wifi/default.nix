
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-wifi";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_python_wifi/0.3.2-0";
        sha256 = "sha256-0cFuu+0ZUMYLNRye4y8OioN2AB1X+8NYP8uU3IV7JWk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pythonwifi package is available through pypi, but not through a 
    deb package. This is copy of the package suitable for use through the
    ROS ecosystem.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
