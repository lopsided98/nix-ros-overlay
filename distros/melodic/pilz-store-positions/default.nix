
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, geometry-msgs, libyaml, pythonPackages, ros-pytest, roslint, rospy, rostest, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-store-positions";
  version = "0.4.14-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_industrial_motion-release";
        rev = "release/melodic/pilz_store_positions/0.4.14-1";
        sha256 = "sha256-xQzGZkL+EBm8GSc/87XWgS9W5Yy8twBcIKauQnmRf4M=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint std-msgs ];
  checkInputs = [ code-coverage pythonPackages.mock pythonPackages.pytestcov ros-pytest rostest visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs libyaml rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows to store poses during teach-in.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
