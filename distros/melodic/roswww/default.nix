
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbridge-server, rosgraph, rospack, rostest }:
buildRosPackage {
  pname = "ros-melodic-roswww";
  version = "0.1.13-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "roswww-release";
        rev = "release/melodic/roswww/0.1.13-1";
        sha256 = "sha256-/es7Z0mr7Rhsj4ZaOk8lBfQQvO/Stc4cc4Ros3Or/Rs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  checkInputs = [ pythonPackages.selenium rostest ];
  propagatedBuildInputs = [ rosbridge-server rosgraph rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
